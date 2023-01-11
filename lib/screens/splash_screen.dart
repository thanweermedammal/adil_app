import 'dart:async';

import 'package:adil/helper/auth_fech.dart';
import 'package:adil/helper/shared_value_helper.dart';
import 'package:adil/screens/home_screen.dart';
import 'package:adil/screens/login_screen.dart';
import 'package:adil/screens/slidescreen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startTime() async {
    var duration = const Duration(seconds: 2);
    return Timer(
      duration,
      checkFirstSeen,
    );
  }

  checkFirstSeen() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if (prefs.getString("userName") != null &&
        prefs.getString("userName") != '') {
      if (prefs.getString("pass") != null && prefs.getString("pass") != '') {
        print(prefs.getString("userName"));
        print(prefs.getString("pass"));

        AuthFetch()
            .authenticate(prefs.getString("userName"), prefs.getString("pass"))
            .then((value) => {
                  if (value)
                    {
                      print(username.$),
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (context) => HomeScreen()),
                          (route) => false)
                    }
                  else
                    {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginScreen()),
                          (route) => false)
                    }
                });
      } else {
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => SliderScreen()),
            (route) => false);
      }
    } else {
      print(username.$);
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => SliderScreen()),
          (route) => false);
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    startTime();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Image.asset(
          "assets/images/Rectangle 1.gif",
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
