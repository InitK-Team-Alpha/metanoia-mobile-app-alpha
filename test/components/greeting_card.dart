import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:metanoia_mobile_app_alpha/components/greeting_card.dart';

void testingGreetingCard() {
  testWidgets('Greeting Card', (WidgetTester tester) async {
    await tester.pumpWidget(GreetingCard());

    expect(
        find.byWidget(
            Card(
              child: Column(
                children: [],
              ),
            ),
            skipOffstage: false),
        findsOneWidget);
  });
}
