import 'package:flutter/material.dart';
import 'package:whatsapp/views/home_screen.dart';
import 'package:whatsapp/views/theme_changer.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ThemeChanger>(
        create: (_) => ThemeChanger(),
        child: Builder(builder: (BuildContext context) {
          final themeChanger = Provider.of<ThemeChanger>(context);
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: HomeScreen(),
            themeMode: themeChanger.themeMode,
            theme: ThemeData(
                primarySwatch: Colors.teal,
                brightness: Brightness.light,
                textTheme: TextTheme(
                    titleLarge: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                    bodyMedium: TextStyle(
                      color: Colors.grey.shade800,
                    ),
                    bodySmall: TextStyle(color: Colors.grey.shade800),
                    headlineLarge: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey.shade700),
                    displaySmall:
                        TextStyle(color: Colors.white, fontSize: 15))),
            darkTheme: ThemeData(
                brightness: Brightness.dark,
                textTheme: TextTheme(
                    titleLarge: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                    bodyMedium: TextStyle(
                      color: Colors.grey,
                    ),
                    bodySmall: TextStyle(color: Colors.grey),
                    headlineLarge: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey.shade700),
                    displaySmall:
                        TextStyle(color: Colors.white, fontSize: 15))),
          );
        }));
  }
}
