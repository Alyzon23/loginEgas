import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:login/main.dart';  // Asegúrate de que el nombre del archivo sea correcto.

void main() {
  testWidgets('Verificar que los campos y botones estén presentes', (WidgetTester tester) async {
    // Construir la aplicación
    await tester.pumpWidget(MyApp());

    // Verificar que el campo de "Nombre" esté presente
    expect(find.byType(TextField), findsNWidgets(3)); // Debería encontrar 3 TextField (Nombre, Email, Contraseña)
    expect(find.text('Nombre'), findsOneWidget);

    // Verificar que el campo de "Email" esté presente
    expect(find.text('Email'), findsOneWidget);

    // Verificar que el campo de "Contraseña" esté presente
    expect(find.text('Contraseña'), findsOneWidget);

    // Verificar que el botón "Iniciar sesión" esté presente
    expect(find.text('Iniciar sesión'), findsOneWidget);

    // Verificar que el botón "Registrarse" esté presente
    expect(find.text('Registrarse'), findsOneWidget);

    // Verificar que el botón "Siguiente" esté presente
    expect(find.text('Siguiente'), findsOneWidget);

    // Verificar que el botón "Salir" esté presente
    expect(find.text('Salir'), findsOneWidget);
  });

  testWidgets('Verificar la acción de los botones', (WidgetTester tester) async {
    // Construir la aplicación
    await tester.pumpWidget(MyApp());

    // Tap en el botón "Iniciar sesión"
    await tester.tap(find.text('Iniciar sesión'));
    await tester.pump();

    // Aquí puedes agregar lo que esperas que ocurra después de presionar el botón "Iniciar sesión"
    // Por ejemplo, si hay una navegación o algún cambio visual, lo verificarías aquí

    // Tap en el botón "Registrarse"
    await tester.tap(find.text('Registrarse'));
    await tester.pump();

    // Lo mismo aquí: Verifica lo que debe ocurrir después de pulsar "Registrarse"
  });
}
