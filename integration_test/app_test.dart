import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets(
    "2 + 2 == 4",
    (WidgetTester tester) async {
      expect(2 + 2 == 4, true);
    },
  );
}