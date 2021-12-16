import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:spotify_clone/src/modules/login-form/login_form.dart';

void main() {
  group('Form validation', () {
    testWidgets(
        'Given user is trying to submit blank fields, app should return a error message',
        (tester) async {
      // ASSEMBLE
      await tester.pumpWidget(const ProviderScope(
          child: MaterialApp(
        home: LoginForm(),
      )));

      final button = find.byType(TextButton);

      // ACT
      await tester.tap(button);
      await tester.pump();

      // ASSERT
      final text = find.text("Required field");
      expect(text, findsWidgets);
    });

    testWidgets(
        'Given user is trying to insert something into fields, app should print a sucess message',
        (tester) async {
      // ASSEMBLE
      await tester.pumpWidget(const ProviderScope(
          child: MaterialApp(
        home: LoginForm(),
      )));

      final emailField = find.byKey(const Key('emailField'));
      final passwordField = find.byKey(const Key('passwordField'));
      final button = find.byType(TextButton);

      // ACT
      await tester.enterText(emailField, 'user email');
      await tester.enterText(passwordField, 'user password');
      await tester.tap(button);
      await tester.pump();

      // ASSSERT
      final text = find.text('Success');
      expect(text, findsOneWidget);
    });
  });
}
