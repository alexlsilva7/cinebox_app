import 'package:cinebox/ui/core/themes/theme.dart';
import 'package:cinebox/ui/splash/splash_page.dart';
import 'package:flutter/material.dart';

class CineboxMainApp extends StatelessWidget {
  const CineboxMainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Cinebox",
      initialRoute: '/',
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (_) => const SplashPage(),
      },
      theme: AppTheme.theme,
    );
  }
}
