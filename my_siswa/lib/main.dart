import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:my_siswa/home.dart';
import 'package:my_siswa/login/login.dart';
import 'package:my_siswa/login/register.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: AnimatedSplashScreen(
          splash: Column(
            children: [
              Center(
                child: SizedBox(
                  width: 100,
                  height: 100,
                  child: Image.asset("assets/mySiswa.png"),
                ),
              ),
              Text("Selamat Datang ke My SiswaKu"),
            ],
          ),
          nextScreen: HomePage(username: AutofillHints.username),
          splashIconSize: 150,
          backgroundColor: Colors.white,
        ),
      ),
    );
  }
}
