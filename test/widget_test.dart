import 'package:flutter_test/flutter_test.dart';
import 'package:chat/main.dart';
void main() {
  testWidgets('MyWidget has a title and message', (WidgetTester tester) async {
    // Create the widget by telling the tester to build it.
    await tester.pumpWidget(MyWidget(title: 'T', message: 'M'));
    // Create the Finders.
    final titleFinder = find.text('T');
    final messageFinder = find.text('M');

      expect(titleFinder, findsOneWidget);
    expect(messageFinder, findsOneWidget);
  });
}
