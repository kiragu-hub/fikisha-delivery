import 'package:material_ui/material_ui.dart';

void main() {
  runApp(const FikishaApp());
}

// --------------------------------------------------
// PRODUCT MODEL
// --------------------------------------------------

class Product {
  final String id;
  final String name;
  final String category;
  final String description;
  final int price;
  final IconData icon;

  const Product({
    required this.id,
    required this.name,
    required this.category,
    required this.description,
    required this.price,
    required this.icon,
  });

  // Sample campus vendors for the prototype.
  String get vendorName {
    switch (category) {
      case 'Meals':
        return 'Campus Bites';
      case 'Groceries':
        return 'Daystar Fresh Mart';
      case 'Pharmacy':
        return 'Campus Care Pharmacy';
      case 'Essentials':
        return 'Student Essentials';
      default:
        return 'Campus Vendor';
    }
  }

  String get preparationTime {
    switch (category) {
      case 'Meals':
        return '15–25 min';
      case 'Groceries':
        return '10–15 min';
      case 'Pharmacy':
        return '10–20 min';
      default:
        return '5–15 min';
    }
  }

  String get imageUrl {
    switch (id) {
      case 'meal1':
        return 'https://images.unsplash.com/photo-1546069901-ba9599a7e63c?w=600';
      case 'meal2':
        return 'https://images.unsplash.com/photo-1601050690597-df0568f70950?w=600';
      case 'meal3':
        return 'https://images.unsplash.com/photo-1547592180-85f173990554?w=600';
      case 'meal4':
        return 'https://images.unsplash.com/photo-1573080496219-bb080dd4f877?w=600';
      case 'grocery1':
        return 'https://images.unsplash.com/photo-1509440159596-0249088772ff?w=600';
      case 'grocery2':
        return 'https://images.unsplash.com/photo-1563636619-e9143da7973b?w=600';
      case 'grocery3':
        return 'https://images.unsplash.com/photo-1506976785307-8732e854ad03?w=600';
      case 'grocery4':
        return 'https://images.unsplash.com/photo-1474979266404-7eaacbcd87c5?w=600';
      case 'pharmacy1':
      case 'pharmacy2':
      case 'pharmacy3':
      case 'pharmacy4':
        return 'https://images.unsplash.com/photo-1603398938378-e54eab446dde?w=600';
      case 'essential1':
        return 'https://images.unsplash.com/photo-1531346878377-a5be20888e57?w=600';
      case 'essential2':
        return 'https://images.unsplash.com/photo-1455390582262-044cdead277a?w=600';
      case 'essential3':
      case 'essential4':
        return 'https://images.unsplash.com/photo-1608248543803-ba4f8c70ae0b?w=600';
      default:
        return '';
    }
  }
}

// --------------------------------------------------
// SAMPLE CAMPUS PRODUCTS
// --------------------------------------------------

const List<Product> campusProducts = [
  // MEALS
  Product(
    id: 'meal1',
    name: 'Chicken and Rice',
    category: 'Meals',
    description: 'Fresh chicken served with rice',
    price: 250,
    icon: Icons.restaurant,
  ),
  Product(
    id: 'meal2',
    name: 'Beef Samosa',
    category: 'Meals',
    description: 'Crispy beef-filled samosa',
    price: 60,
    icon: Icons.fastfood,
  ),
  Product(
    id: 'meal3',
    name: 'Chapati and Beans',
    category: 'Meals',
    description: 'Two chapatis with beans',
    price: 150,
    icon: Icons.lunch_dining,
  ),
  Product(
    id: 'meal4',
    name: 'Chips and Sausage',
    category: 'Meals',
    description: 'Hot chips with sausage',
    price: 180,
    icon: Icons.fastfood,
  ),

  // GROCERIES
  Product(
    id: 'grocery1',
    name: 'Fresh Bread',
    category: 'Groceries',
    description: 'Freshly baked loaf',
    price: 70,
    icon: Icons.bakery_dining,
  ),
  Product(
    id: 'grocery2',
    name: 'Milk 500ml',
    category: 'Groceries',
    description: 'Fresh packet milk',
    price: 65,
    icon: Icons.local_drink,
  ),
  Product(
    id: 'grocery3',
    name: 'Eggs (6 pieces)',
    category: 'Groceries',
    description: 'Half-dozen fresh eggs',
    price: 120,
    icon: Icons.egg_alt,
  ),
  Product(
    id: 'grocery4',
    name: 'Cooking Oil 500ml',
    category: 'Groceries',
    description: 'Cooking oil for everyday use',
    price: 150,
    icon: Icons.water_drop,
  ),

  // PHARMACY
  Product(
    id: 'pharmacy1',
    name: 'Bandages',
    category: 'Pharmacy',
    description: 'Basic first-aid bandages',
    price: 80,
    icon: Icons.healing,
  ),
  Product(
    id: 'pharmacy2',
    name: 'Cotton Wool',
    category: 'Pharmacy',
    description: 'Cotton wool pack',
    price: 60,
    icon: Icons.medical_services,
  ),
  Product(
    id: 'pharmacy3',
    name: 'Antiseptic Solution',
    category: 'Pharmacy',
    description: 'For basic first-aid cleaning',
    price: 150,
    icon: Icons.medication,
  ),
  Product(
    id: 'pharmacy4',
    name: 'Digital Thermometer',
    category: 'Pharmacy',
    description: 'Digital temperature checker',
    price: 250,
    icon: Icons.thermostat,
  ),

  // ESSENTIALS
  Product(
    id: 'essential1',
    name: 'Exercise Book',
    category: 'Essentials',
    description: 'A4 ruled exercise book',
    price: 50,
    icon: Icons.menu_book,
  ),
  Product(
    id: 'essential2',
    name: 'Ballpoint Pen',
    category: 'Essentials',
    description: 'Blue or black writing pen',
    price: 20,
    icon: Icons.edit,
  ),
  Product(
    id: 'essential3',
    name: 'Tissue Pack',
    category: 'Essentials',
    description: 'Pocket tissue pack',
    price: 40,
    icon: Icons.wash,
  ),
  Product(
    id: 'essential4',
    name: 'Toothpaste',
    category: 'Essentials',
    description: 'Everyday oral care',
    price: 100,
    icon: Icons.cleaning_services,
  ),
];

// --------------------------------------------------
// APPLICATION ROOT
// --------------------------------------------------

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
        textScale: textScale,
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

// --------------------------------------------------
// CUSTOMER HOME AND NAVIGATION
// --------------------------------------------------

class CustomerHome extends StatefulWidget {
  final double textScale;
  final bool highContrast;
  final Function(double, bool) onAccessibilityChanged;

  const CustomerHome({
    super.key,
    required this.textScale,
    required this.highContrast,
    required this.onAccessibilityChanged,
  });

  @override
  State<CustomerHome> createState() => _CustomerHomeState();
}

class _CustomerHomeState extends State<CustomerHome> {
  int selectedIndex = 0;
  String selectedCategory = 'All';
  String searchQuery = '';

  final Map<String, int> cart = {};

  final TextEditingController searchController = TextEditingController();

  final List<String> categories = [
    'All',
    'Meals',
    'Groceries',
    'Pharmacy',
    'Essentials',
  ];

  int get cartCount {
    return cart.values.fold(0, (total, quantity) => total + quantity);
  }

  int get cartTotal {
    int total = 0;

    for (final entry in cart.entries) {
      final product = campusProducts.firstWhere(
        (product) => product.id == entry.key,
      );

      total += product.price * entry.value;
    }

    return total;
  }

  List<Product> get filteredProducts {
    return campusProducts.where((product) {
      final matchesCategory =
          selectedCategory == 'All' || product.category == selectedCategory;

      final query = searchQuery.toLowerCase();

      final matchesSearch =
          product.name.toLowerCase().contains(query) ||
          product.description.toLowerCase().contains(query) ||
          product.category.toLowerCase().contains(query);

      return matchesCategory && matchesSearch;
    }).toList();
  }

  void addToCart(Product product) {
    setState(() {
      cart[product.id] = (cart[product.id] ?? 0) + 1;
    });

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('${product.name} added to cart'),
        duration: const Duration(seconds: 1),
        action: SnackBarAction(
          label: 'VIEW CART',
          onPressed: () => setState(() => selectedIndex = 1),
        ),
      ),
    );
  }

  void changeQuantity(Product product, int change) {
    setState(() {
      final currentQuantity = cart[product.id] ?? 0;
      final newQuantity = currentQuantity + change;

      if (newQuantity <= 0) {
        cart.remove(product.id);
      } else {
        cart[product.id] = newQuantity;
      }
    });
  }

  void showAccessibilitySettings() {
    double scale = widget.textScale;
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
                    const Text('Adjust text size'),
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
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final pages = [
      buildHomePage(),
      buildCartPage(),
      const SimplePage(
        title: 'My Orders',
        message: 'Your placed orders will appear here.',
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
            tooltip: 'Shopping cart',
            onPressed: () => setState(() => selectedIndex = 1),
            icon: Stack(
              clipBehavior: Clip.none,
              children: [
                const Icon(Icons.shopping_cart_outlined),
                if (cartCount > 0)
                  Positioned(
                    right: -8,
                    top: -8,
                    child: CircleAvatar(
                      radius: 9,
                      backgroundColor: const Color(0xFF16845B),
                      child: Text(
                        '$cartCount',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
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
            icon: Icon(Icons.shopping_cart_outlined),
            selectedIcon: Icon(Icons.shopping_cart),
            label: 'Cart',
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

  // --------------------------------------------------
  // HOME PAGE
  // --------------------------------------------------

  Widget buildHomePage() {
    final products = filteredProducts;

    return ListView(
      padding: const EdgeInsets.all(18),
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
            TextButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Campus location selection coming soon'),
                  ),
                );
              },
              child: const Text('Change'),
            ),
          ],
        ),
        const SizedBox(height: 18),
        const Text(
          'What do you need today?',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        const Text(
          'Order what you need. We will bring it to your doorstep.',
          style: TextStyle(color: Colors.grey),
        ),
        const SizedBox(height: 20),

        // SEARCH
        TextField(
          controller: searchController,
          onChanged: (value) {
            setState(() => searchQuery = value);
          },
          decoration: InputDecoration(
            hintText: 'Search meals, groceries, pharmacy...',
            prefixIcon: const Icon(Icons.search),
            suffixIcon: searchQuery.isNotEmpty
                ? IconButton(
                    tooltip: 'Clear search',
                    icon: const Icon(Icons.close),
                    onPressed: () {
                      searchController.clear();
                      setState(() => searchQuery = '');
                    },
                  )
                : null,
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
              borderSide: BorderSide.none,
            ),
          ),
        ),
        const SizedBox(height: 24),

        // CATEGORY FILTERS
        const Text(
          'Shop by category',
          style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 12),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: categories.map((category) {
              final isSelected = selectedCategory == category;

              return Padding(
                padding: const EdgeInsets.only(right: 8),
                child: ChoiceChip(
                  label: Text(category),
                  selected: isSelected,
                  onSelected: (_) {
                    setState(() => selectedCategory = category);
                  },
                  selectedColor: const Color(0xFFDDF2E7),
                  labelStyle: TextStyle(
                    color: isSelected
                        ? const Color(0xFF145C43)
                        : Colors.black87,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              );
            }).toList(),
          ),
        ),
        const SizedBox(height: 22),

        // PROMOTIONAL BANNER
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
        const SizedBox(height: 24),

        // PRODUCT LIST
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              selectedCategory == 'All'
                  ? 'Popular campus products'
                  : selectedCategory,
              style: const TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
            ),
            Text(
              '${products.length} items',
              style: const TextStyle(color: Colors.grey),
            ),
          ],
        ),
        const SizedBox(height: 14),

        if (products.isEmpty)
          const Padding(
            padding: EdgeInsets.all(30),
            child: Column(
              children: [
                Icon(Icons.search_off, size: 55, color: Colors.grey),
                SizedBox(height: 12),
                Text(
                  'No products found.',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text('Try another search or category.'),
              ],
            ),
          )
        else
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: products.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              childAspectRatio: 0.68,
            ),
            itemBuilder: (context, index) {
              final product = products[index];

              return ProductCard(
                product: product,
                quantity: cart[product.id] ?? 0,
                onAdd: () => addToCart(product),
              );
            },
          ),
        const SizedBox(height: 24),
      ],
    );
  }

  // --------------------------------------------------
  // SHOPPING CART PAGE
  // --------------------------------------------------

  Widget buildCartPage() {
    final cartProducts = campusProducts
        .where((product) => cart.containsKey(product.id))
        .toList();

    if (cartProducts.isEmpty) {
      return Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.shopping_cart_outlined,
                size: 75,
                color: Color(0xFF16845B),
              ),
              const SizedBox(height: 20),
              const Text(
                'Your cart is empty',
                style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              const Text(
                'Explore the campus catalogue and add products you need.',
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              FilledButton.icon(
                onPressed: () {
                  setState(() {
                    selectedIndex = 0;
                  });
                },
                icon: const Icon(Icons.storefront),
                label: const Text('Browse products'),
              ),
            ],
          ),
        ),
      );
    }

    return ListView(
      padding: const EdgeInsets.all(18),
      children: [
        const Text(
          'My Shopping Cart',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 6),
        Text(
          '$cartCount items in your cart',
          style: const TextStyle(color: Colors.grey),
        ),
        const SizedBox(height: 18),

        ...cartProducts.map((product) {
          final quantity = cart[product.id] ?? 0;

          return Card(
            margin: const EdgeInsets.only(bottom: 12),
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 27,
                    backgroundColor: const Color(0xFFDDF2E7),
                    child: Icon(
                      product.icon,
                      color: const Color(0xFF16845B),
                      size: 27,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          product.name,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'KSh ${product.price} each',
                          style: const TextStyle(color: Colors.grey),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          'Subtotal: KSh ${product.price * quantity}',
                          style: const TextStyle(
                            color: Color(0xFF16845B),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            tooltip: 'Decrease quantity',
                            visualDensity: VisualDensity.compact,
                            onPressed: () => changeQuantity(product, -1),
                            icon: const Icon(Icons.remove_circle_outline),
                          ),
                          Text(
                            '$quantity',
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          IconButton(
                            tooltip: 'Increase quantity',
                            visualDensity: VisualDensity.compact,
                            onPressed: () => changeQuantity(product, 1),
                            icon: const Icon(Icons.add_circle_outline),
                          ),
                        ],
                      ),
                      TextButton(
                        onPressed: () {
                          setState(() => cart.remove(product.id));
                        },
                        child: const Text('Remove'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        }),

        const SizedBox(height: 12),
        Card(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(18),
            child: Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Delivery fee'),
                    Text('Calculated at checkout'),
                  ],
                ),
                const Divider(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Subtotal',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'KSh $cartTotal',
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF16845B),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 18),
                SizedBox(
                  width: double.infinity,
                  child: FilledButton.icon(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (dialogContext) {
                          return AlertDialog(
                            title: const Text('Checkout preview'),
                            content: Text(
                              'Your order subtotal is KSh $cartTotal. '
                              'Delivery location and payment options '
                              'will be added in the next development stage.',
                            ),
                            actions: [
                              TextButton(
                                onPressed: () => Navigator.pop(dialogContext),
                                child: const Text('Continue shopping'),
                              ),
                            ],
                          );
                        },
                      );
                    },
                    icon: const Icon(Icons.shopping_bag),
                    label: const Text('Proceed to checkout'),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}

// --------------------------------------------------
// PRODUCT CARD
// --------------------------------------------------

class CheckoutPage extends StatefulWidget {
  final int subtotal;

  const CheckoutPage({super.key, required this.subtotal});

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  final _formKey = GlobalKey<FormState>();

  final nameController = TextEditingController();
  final phoneController = TextEditingController();
  final directionsController = TextEditingController();
  final otherLocationController = TextEditingController();

  final int deliveryFee = 50;

  String selectedLocation = 'Hostel / Residence';
  String selectedPayment = 'M-Pesa';

  final List<String> locations = [
    'Hostel / Residence',
    'Library',
    'Lecture Block',
    'Main Gate',
    'Other',
  ];

  int get total => widget.subtotal + deliveryFee;

  @override
  void dispose() {
    nameController.dispose();
    phoneController.dispose();
    directionsController.dispose();
    otherLocationController.dispose();
    super.dispose();
  }

  String? validatePhone(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Enter your phone number';
    }

    final phone = value.replaceAll(RegExp(r'[\s-]'), '');

    if (!RegExp(r'^(?:\+254|0)[17]\d{8}$').hasMatch(phone)) {
      return 'Enter a valid Kenyan phone number';
    }

    return null;
  }

  Future<void> confirmOrder() async {
    if (!_formKey.currentState!.validate()) {
      return;
    }

    final reference =
        'FK-${DateTime.now().millisecondsSinceEpoch.toString().substring(7)}';

    await showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (dialogContext) {
        return AlertDialog(
          icon: const Icon(
            Icons.check_circle,
            color: Color(0xFF16845B),
            size: 55,
          ),
          title: const Text('Demo order confirmed!'),
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Your Fikisha checkout demonstration is complete.'),
                const SizedBox(height: 15),
                Text('Reference: $reference'),
                const SizedBox(height: 8),
                Text('Customer: ${nameController.text.trim()}'),
                Text(
                  'Location: ${selectedLocation == 'Other' ? otherLocationController.text.trim() : selectedLocation}',
                ),
                Text('Payment: $selectedPayment'),
                const Divider(height: 25),
                Text('Total: KSh $total'),
                const SizedBox(height: 12),
                const Text(
                  'This is a local prototype confirmation. '
                  'No real payment was processed and no order '
                  'was sent to a backend.',
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
              ],
            ),
          ),
          actions: [
            FilledButton(
              onPressed: () => Navigator.pop(dialogContext),
              child: const Text('Continue'),
            ),
          ],
        );
      },
    );

    if (mounted) {
      Navigator.pop(context, true);
    }
  }

  Widget _buildSummaryRow(String label, String amount, {bool bold = false}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: TextStyle(
            fontWeight: bold ? FontWeight.bold : FontWeight.normal,
          ),
        ),
        Text(
          amount,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: bold ? 18 : 14,
            color: bold ? const Color(0xFF16845B) : null,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Checkout')),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: const EdgeInsets.all(18),
          children: [
            const Text(
              'Delivery details',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 6),
            const Text(
              'Tell us where and to whom the order should be delivered.',
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 20),

            TextFormField(
              controller: nameController,
              textCapitalization: TextCapitalization.words,
              decoration: const InputDecoration(
                labelText: 'Customer name',
                prefixIcon: Icon(Icons.person_outline),
                border: OutlineInputBorder(),
              ),
              validator: (value) {
                if (value == null || value.trim().isEmpty) {
                  return 'Enter your name';
                }
                return null;
              },
            ),

            const SizedBox(height: 15),

            TextFormField(
              controller: phoneController,
              keyboardType: TextInputType.phone,
              decoration: const InputDecoration(
                labelText: 'Phone number',
                hintText: '07XXXXXXXX',
                prefixIcon: Icon(Icons.phone_outlined),
                border: OutlineInputBorder(),
              ),
              validator: validatePhone,
            ),

            const SizedBox(height: 25),

            const Text(
              'Delivery location',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 12),

            DropdownButtonFormField<String>(
              initialValue: selectedLocation,
              isExpanded: true,
              decoration: const InputDecoration(
                labelText: 'Choose campus location',
                prefixIcon: Icon(Icons.location_on_outlined),
                border: OutlineInputBorder(),
              ),
              items: locations.map((location) {
                return DropdownMenuItem(value: location, child: Text(location));
              }).toList(),
              onChanged: (value) {
                if (value != null) {
                  setState(() {
                    selectedLocation = value;
                  });
                }
              },
            ),

            if (selectedLocation == 'Other') ...[
              const SizedBox(height: 15),
              TextFormField(
                controller: otherLocationController,
                decoration: const InputDecoration(
                  labelText: 'Specify your location',
                  hintText: 'Enter your campus location',
                  prefixIcon: Icon(Icons.place_outlined),
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (selectedLocation == 'Other' &&
                      (value == null || value.trim().isEmpty)) {
                    return 'Please specify your location';
                  }
                  return null;
                },
              ),
            ],

            const SizedBox(height: 15),

            TextFormField(
              controller: directionsController,
              maxLines: 3,
              decoration: const InputDecoration(
                labelText: 'Delivery directions',
                hintText: 'Building, room, floor, landmarks or instructions',
                prefixIcon: Icon(Icons.directions_outlined),
                border: OutlineInputBorder(),
                alignLabelWithHint: true,
              ),
              validator: (value) {
                if (value == null || value.trim().isEmpty) {
                  return 'Enter delivery directions';
                }
                return null;
              },
            ),

            const SizedBox(height: 25),

            const Text(
              'Payment method',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 10),

            Card(
              child: Column(
                children: [
                  RadioListTile<String>(
                    value: 'M-Pesa',
                    groupValue: selectedPayment,
                    title: const Text('M-Pesa'),
                    subtitle: const Text('Mobile money (demo only)'),
                    secondary: const Icon(Icons.phone_android),
                    onChanged: (value) {
                      if (value != null) {
                        setState(() {
                          selectedPayment = value;
                        });
                      }
                    },
                  ),
                  const Divider(height: 1),
                  RadioListTile<String>(
                    value: 'Cash on Delivery',
                    groupValue: selectedPayment,
                    title: const Text('Cash on Delivery'),
                    subtitle: const Text('Pay when your order arrives'),
                    secondary: const Icon(Icons.payments_outlined),
                    onChanged: (value) {
                      if (value != null) {
                        setState(() {
                          selectedPayment = value;
                        });
                      }
                    },
                  ),
                ],
              ),
            ),

            const SizedBox(height: 25),

            const Text(
              'Order summary',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 10),

            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    _buildSummaryRow(
                      'Items subtotal',
                      'KSh ${widget.subtotal}',
                    ),
                    const SizedBox(height: 12),
                    _buildSummaryRow('Delivery fee', 'KSh $deliveryFee'),
                    const Divider(height: 25),
                    _buildSummaryRow('Total amount', 'KSh $total', bold: true),
                    const SizedBox(height: 8),
                    const Text(
                      'The KSh 50 delivery fee is an illustrative '
                      'prototype value, not a confirmed campus rate.',
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 22),

            SizedBox(
              width: double.infinity,
              child: FilledButton.icon(
                onPressed: confirmOrder,
                icon: const Icon(Icons.check_circle_outline),
                label: const Padding(
                  padding: EdgeInsets.all(13),
                  child: Text('Confirm demo order'),
                ),
              ),
            ),

            const SizedBox(height: 12),

            const Center(
              child: Text(
                'Fikisha Delivery • Daystar Athi River',
                style: TextStyle(color: Colors.grey, fontSize: 12),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final Product product;
  final int quantity;
  final VoidCallback onAdd;

  const ProductCard({
    super.key,
    required this.product,
    required this.quantity,
    required this.onAdd,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      color: Colors.white,
      elevation: 1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Stack(
              fit: StackFit.expand,
              children: [
                Image.network(
                  product.imageUrl,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      color: const Color(0xFFDDF2E7),
                      child: Icon(
                        product.icon,
                        size: 55,
                        color: const Color(0xFF16845B),
                      ),
                    );
                  },
                ),
                Positioned(
                  top: 8,
                  left: 8,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 9,
                      vertical: 5,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white.withValues(alpha: 0.95),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      product.category,
                      style: const TextStyle(
                        fontSize: 9,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF145C43),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 9, 10, 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.name,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  product.description,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontSize: 10, color: Colors.grey),
                ),
                const SizedBox(height: 5),
                Text(
                  product.vendorName,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 10,
                    color: Color(0xFF16845B),
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 3),
                Text(
                  'Ready in ${product.preparationTime}',
                  style: const TextStyle(fontSize: 9, color: Colors.grey),
                ),
                const SizedBox(height: 5),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        'KSh ${product.price}',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                    ),
                    IconButton.filled(
                      tooltip: 'Add ${product.name} to cart',
                      visualDensity: VisualDensity.compact,
                      onPressed: onAdd,
                      icon: const Icon(Icons.add, size: 19),
                    ),
                  ],
                ),
                if (quantity > 0)
                  Text(
                    '$quantity in cart',
                    style: const TextStyle(
                      color: Color(0xFF16845B),
                      fontSize: 11,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
// --------------------------------------------------
// PLACEHOLDER PAGES
// --------------------------------------------------

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
