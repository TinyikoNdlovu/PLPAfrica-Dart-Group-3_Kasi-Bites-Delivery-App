

import 'package:flutter/material.dart';
import 'package:kasi_bites_delivery_app/src/constants/colors.dart';
import 'package:kasi_bites_delivery_app/src/constants/image_strings.dart';
import 'package:kasi_bites_delivery_app/src/constants/sizes.dart';

import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:kasi_bites_delivery_app/src/features/screens/welcome/welcome.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();

    Future.delayed(const Duration(seconds: 5)).then((value) {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const Welcome()));
    });

  } 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Image(
              image: AssetImage(tSplashImage),
              width: 300,
            ),
            SizedBox(
              height: 50,
            ),
            SpinKitFadingCircle(
              color: tAccentColor,
              size: tSplashContainerSize,
            )
          ],
        ),
      ),
    );
  }
}


