import 'package:flutter_test/flutter_test.dart';

import 'package:prova_1/main.dart';

void main() {
  testWidgets('app inicia na splash e navega para login', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Projeto Avaliativo'), findsOneWidget);

    await tester.pump(const Duration(seconds: 2));
    await tester.pumpAndSettle();

    expect(find.text('Entre para continuar'), findsOneWidget);
  });
}
