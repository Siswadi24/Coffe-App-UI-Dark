import 'package:coffe_app_ui_dark/ui/homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 8), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => const HomePages(),
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset(
                'assets/images/splashScreen.jpg',
                width: 200,
              ),
            ),
            const Text(
              'Coffee App',
              style: TextStyle(
                fontFamily: 'Quesha',
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SpinKitSquareCircle(
              color: Colors.green,
              size: 50,
            ),
          ],
        ),
      ),
    );
  }
}
