import 'package:flutter/material.dart';
import 'dart:async';

import 'package:task/dashboard_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,

      
      home:  SplashScreen(),
    );
  }
}


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();

  

  }


class _SplashScreenState extends State<SplashScreen> {
  @override

    void initState() {
    super.initState();
    Timer(const Duration(seconds: 3),
    () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const DashboardScreen()));
    }
      );

   

  
}

    @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               Image.asset(
                "assets/images/logo.png",
                height: 120,
               ),
        
              const Text(
                'SCHOOL',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
                ),
        
                 const Text(
                'SCHOOL MANAGEMENT APP',
                style: TextStyle(
                  fontSize: 18,
                  
                ),
                )
        
            ],
          ),
        ),
      ),
    );
  }
}

