import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:supabase_storage/classes.dart';

class Setup extends StatelessWidget {
  const Setup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final text = MediaQuery.of(context).platformBrightness == Brightness.dark
        ? 'DarkTheme'
        : 'LightTheme';

    return Scaffold(
      appBar: AppBar(
        title: const Text('Setup'),
        centerTitle: true,
        elevation: 3,
        actions: const [
//          ChangeThemeButtonWidget(),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: 100,
                  height: 40,
//                  color: Colors.white,
                  margin: const EdgeInsets.only(right: 15),
                  child: const ChangeThemeButtonWidget(),
                ),
              ],
            ),
            Text(text),
          ],
        ),
      ),
    );
  }
}

class ChangeThemeButtonWidget extends StatelessWidget {
  const ChangeThemeButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Switch.adaptive(
      value: themeProvider.isDarkMode,
      onChanged: (value) {
        final provider = Provider.of<ThemeProvider>(context, listen: false);
        provider.toogleTheme(value);
        // ignore: avoid_print
        print('Segundo : $value');
      },
    );
  }
}
