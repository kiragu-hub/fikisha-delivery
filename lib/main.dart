import 'package:material_ui/material_ui.dart';

void main() {
  runApp(const FikishaApp());
}

class FikishaApp extends StatefulWidget {
  const FikishaApp({super.key});

  @override
  State<FikishaApp> createState() => _FikishaAppState();
}

class _FikishaAppState extends State<FikishaApp> {
  double textScale = 1.0;
  bool highContrast = false;

  @override
  Widget build(BuildContext context) {
    final colors = ColorScheme.fromSeed(
      seedColor: const Color(0xFF16845B),
      contrastLevel: highContrast ? 1.0 : 0.0,
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fikisha Delivery',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: colors,
        scaffoldBackgroundColor: const Color(0xFFF7F9F7),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFFF7F9F7),
          surfaceTintColor: Colors.transparent,
        ),
      ),
      builder: (context, child) {
        return MediaQuery(
          data: MediaQuery.of(context)
              .copyWith(textScaler: TextScaler.linear(textScale)),
          child: child!,
        );
      },
      home: CustomerHome(
        highContrast: highContrast,
        onAccessibilityChanged: (scale, contrast) {
          setState(() {
            textScale = scale;
            highContrast = contrast;
          });
        },
      ),
    );
  }
}

class CustomerHome extends StatefulWidget {
  final bool highContrast;
  final Function(double, bool) onAccessibilityChanged;

  const CustomerHome({
    super.key,
    required this.highContrast,
    required this.onAccessibilityChanged,
  });

  @override
  State<CustomerHome> createState() => _CustomerHomeState();
}

class _CustomerHomeState extends State<CustomerHome> {
  int selectedIndex = 0;
  String selectedCategory = 'All';

  final categories = [
    {'name': 'Meals', 'icon': Icons.restaurant},
    {'name': 'Groceries', 'icon': Icons.shopping_basket},
    {'name': 'Pharmacy', 'icon': Icons.local_pharmacy},
    {'name': 'Essentials', 'icon': Icons.shopping_bag},
  ];

  void showAccessibilitySettings() {
    double scale = 1.0;
    bool contrast = widget.highContrast;

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return StatefulBuilder(
          builder: (context, updateSheet) {
            return Padding(
              padding: const EdgeInsets.all(24),
              child: SafeArea(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Accessibility settings',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text('Text size'),
                    Slider(
                      value: scale,
                      min: 0.8,
                      max: 1.5,
                      divisions: 7,
                      label: '${(scale * 100).round()}%',
                      onChanged: (value) {
                        updateSheet(() => scale = value);
                        widget.onAccessibilityChanged(scale, contrast);
                      },
                    ),
                    SwitchListTile(
                      title: const Text('High contrast'),
                      subtitle: const Text(
                        'Increase contrast for easier reading',
                      ),
                      value: contrast,
                      onChanged: (value) {
                        updateSheet(() => contrast = value);
                        widget.onAccessibilityChanged(scale, contrast);
                      },
                    ),
                    const SizedBox(height: 12),
                    const Text(
                      'These settings help make the app easier to use.',
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final pages = [
      buildHomePage(),
      const SimplePage(
        title: 'My Orders',
        message: 'Your orders will appear here.',
        icon: Icons.receipt_long,
      ),
      const SimplePage(
        title: 'Activity',
        message: 'Your delivery activity will appear here.',
        icon: Icons.local_activity,
      ),
      const SimplePage(
        title: 'My Profile',
        message: 'Manage your account and preferences here.',
        icon: Icons.person,
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Fikisha',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            letterSpacing: -0.8,
          ),
        ),
        actions: [
          IconButton(
            tooltip: 'Accessibility settings',
            onPressed: showAccessibilitySettings,
            icon: const Icon(Icons.accessibility_new),
          ),
          IconButton(
            tooltip: 'Notifications',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('No new notifications')),
              );
            },
            icon: const Icon(Icons.notifications_none),
          ),
        ],
      ),
      body: IndexedStack(index: selectedIndex, children: pages),
      bottomNavigationBar: NavigationBar(
        selectedIndex: selectedIndex,
        onDestinationSelected: (index) {
          setState(() => selectedIndex = index);
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home_outlined),
            selectedIcon: Icon(Icons.home),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.receipt_long_outlined),
            label: 'Orders',
          ),
          NavigationDestination(icon: Icon(Icons.history), label: 'Activity'),
          NavigationDestination(
            icon: Icon(Icons.person_outline),
            label: 'Profile',
          ),
        ],
      ),
    );
  }

  Widget buildHomePage() {
    return ListView(
      padding: const EdgeInsets.all(20),
      children: [
        const Text(
          'DELIVERING TO',
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
            color: Colors.grey,
            letterSpacing: 1.2,
          ),
        ),
        const SizedBox(height: 6),
        Row(
          children: [
            const Icon(Icons.location_on, color: Color(0xFF16845B)),
            const SizedBox(width: 8),
            const Expanded(
              child: Text(
                'My campus location',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
            TextButton(onPressed: () {}, child: const Text('Change')),
          ],
        ),
        const SizedBox(height: 20),

        const Text(
          'What do you need today?',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        const Text(
          'Get essentials delivered right to your doorstep.',
          style: TextStyle(color: Colors.grey),
        ),
        const SizedBox(height: 20),

        TextField(
          decoration: InputDecoration(
            hintText: 'Search meals, groceries, pharmacy...',
            prefixIcon: const Icon(Icons.search),
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
              borderSide: BorderSide.none,
            ),
          ),
        ),
        const SizedBox(height: 28),

        const Text(
          'Explore categories',
          style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 15),

        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: categories.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            crossAxisSpacing: 10,
            childAspectRatio: 0.8,
          ),
          itemBuilder: (context, index) {
            final category = categories[index];
            final name = category['name'] as String;
            final icon = category['icon'] as IconData;
            final selected = selectedCategory == name;

            return Semantics(
              button: true,
              label: '$name category',
              child: InkWell(
                borderRadius: BorderRadius.circular(14),
                onTap: () {
                  setState(() => selectedCategory = name);
                  ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content: Text('$name selected')));
                },
                child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: selected ? const Color(0xFFDDF2E7) : Colors.white,
                    borderRadius: BorderRadius.circular(14),
                    border: Border.all(
                      color: selected
                          ? const Color(0xFF16845B)
                          : Colors.transparent,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(icon, size: 29, color: const Color(0xFF16845B)),
                      const SizedBox(height: 8),
                      Text(
                        name,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
        const SizedBox(height: 28),

        Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: const Color(0xFF145C43),
            borderRadius: BorderRadius.circular(18),
          ),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'YOUR DOORSTEP, OUR PRIORITY',
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 11,
                  letterSpacing: 1,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 12),
              Text(
                'Too busy to step out?',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                'Let us bring what you need directly to your door.',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
        const SizedBox(height: 28),

        const Text(
          'How Fikisha works',
          style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 15),
        const FeatureTile(
          icon: Icons.shopping_cart_outlined,
          title: 'Choose what you need',
          description: 'Browse available products and services.',
        ),
        const FeatureTile(
          icon: Icons.delivery_dining,
          title: 'Get it delivered',
          description: 'A delivery person brings your order to you.',
        ),
        const FeatureTile(
          icon: Icons.accessible_forward,
          title: 'Designed for everyone',
          description: 'Accessible and convenient delivery experiences.',
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}

class FeatureTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;

  const FeatureTile({
    super.key,
    required this.icon,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(vertical: 4),
      leading: CircleAvatar(
        backgroundColor: const Color(0xFFDDF2E7),
        child: Icon(icon, color: const Color(0xFF16845B)),
      ),
      title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
      subtitle: Text(description),
    );
  }
}

class SimplePage extends StatelessWidget {
  final String title;
  final String message;
  final IconData icon;

  const SimplePage({
    super.key,
    required this.title,
    required this.message,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 65, color: const Color(0xFF16845B)),
            const SizedBox(height: 20),
            Text(
              title,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(message, textAlign: TextAlign.center),
          ],
        ),
      ),
    );
  }
}
