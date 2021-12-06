import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:supabase_storage/classes.dart';
import 'picker_historico.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
        create: (context) => ThemeProvider(),
        builder: (context, _) {
          final themeProvider = Provider.of<ThemeProvider>(context);
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Picker to SupaBase',
            themeMode: themeProvider.themeMode,
            theme: AppColor.tipo1,
            darkTheme:
                FlexColorScheme.dark(scheme: FlexScheme.blumineBlue).toTheme,
            home: const Inicio(),
          );
        },
      );
}
