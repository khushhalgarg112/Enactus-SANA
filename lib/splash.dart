import 'package:enactu_shivaji/main.dart';
import 'package:flutter/material.dart';


class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
  
  }

  


class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _naviagtetohome();
  }

  _naviagtetohome ()async {
    await Future.delayed(const Duration(milliseconds: 1500, ),);
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> MyHomePage(title: 'Project SANA')));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 150,
            ),
            Image.asset('assets/images/home-logo.png'),

            const SizedBox(
              height: 20,
            ),

            Padding(
              padding: const EdgeInsets.only(left: 70),
              child: Container(
                alignment: Alignment.center,
                child: const Text("Project SANA ",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
                ),
              ),
            ),

            const SizedBox(
              height: 5,
            ),

            Padding(
              padding: const EdgeInsets.only(left: 170),
              child: Container(
              child: const Text("By ENACTUS SHIVAJI ",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
