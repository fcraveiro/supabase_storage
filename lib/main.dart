import 'package:flutter/material.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:supabase_storage/inicio.dart';
import 'package:supabase_storage/teste.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Picker to SupaBase',
      themeMode: ThemeMode.light,
      theme: AppColor.tipo3,
      darkTheme: FlexColorScheme.dark(scheme: FlexScheme.aquaBlue).toTheme,
      home: const Inicio(),
    );
  }

// teste

/*


 ChangeNotifierProvider(
        child: const Inicio(),
        create: (_) => TemasController(),
      ),


      scheme = FlexScheme.hippieBlue,
      scheme = FlexScheme.mallardGreen,
      scheme = FlexScheme.outerSpace,
      scheme = FlexScheme.custom,
*/

}
