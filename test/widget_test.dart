import 'package:flutter_test/flutter_test.dart';
import 'package:fikisha_delivery_mobile/main.dart';

void main() {
  testWidgets('Fikisha Delivery app loads', (WidgetTester tester) async {
    await tester.pumpWidget(const FikishaApp());

    expect(find.byType(FikishaApp), findsOneWidget);
    expect(find.text('Fikisha'), findsOneWidget);
  });
}
