import 'package:flutter_test/flutter_test.dart';
import 'package:predipark/main.dart';

void main() {
  testWidgets('Verify that text and button are rendered correctly', (WidgetTester tester) async {
    // Build the app
    await tester.pumpWidget(const MyApp());

    // Check that "Hello, World!" is displayed
    expect(find.text('Hello, World!'), findsOneWidget);

    // Check that the button with text 'A button' is displayed
    expect(find.text('A button'), findsOneWidget);
  });

  testWidgets('Tap button triggers print (no errors)', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    // Tap the button
    await tester.tap(find.text('A button'));
    await tester.pump();

    // There's no visible state change, so we just ensure it doesn't crash
    expect(find.text('A button'), findsOneWidget);
  });
}
