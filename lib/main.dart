import 'package:coffeeshopapp/auth/login_or_register.dart';
import 'package:coffeeshopapp/components/splash_screen.dart';
import 'package:coffeeshopapp/themes/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import 'pages/login_page.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => ThemeProvider(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Provider.of<ThemeProvider>(context).themeData,
      home: FutureBuilder(
        future: _initializeApp(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return const LoginOrRegister();
          } else {
            return const SplashScreen();
          }
        },
      ),
    );
  }

  Future<void> _initializeApp() async {
    // Perform any necessary initialization tasks here
    // For example, you can delay for 3 seconds to simulate loading
    await Future.delayed(const Duration(seconds: 5));
  }
}
