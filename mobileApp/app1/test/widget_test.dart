// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:app1/main.dart';

void main() {
  testWidgets('Displays the customized INFT 425 screen', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('INFT 425 - GitHub Copilot'), findsOneWidget);
    expect(find.text('Hello World'), findsOneWidget);
    expect(find.byIcon(Icons.code), findsOneWidget);
    expect(
      find.text('Department of Computing Sciences and Engineering'),
      findsOneWidget,
    );
    expect(find.text('Learning Flutter, one widget at a time'), findsOneWidget);

    final greeting = tester.widget<Text>(find.text('Hello World'));
    expect(greeting.style?.fontSize, 42);
    expect(greeting.style?.fontWeight, FontWeight.bold);
    expect(greeting.style?.color, Colors.teal);
  });
}
