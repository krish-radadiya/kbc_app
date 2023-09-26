import 'package:flutter/material.dart';

class Lose_game extends StatefulWidget {
  const Lose_game({Key? key}) : super(key: key);

  @override
  State<Lose_game> createState() => _Lose_game();
}

class _Lose_game extends State<Lose_game> {
  @override
  Widget build(BuildContext context) {
    Map data = ModalRoute.of(context)!.settings.arguments as Map;
    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.width;
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Color(0xff000000),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/2.png",
              height: 100,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "oops!",
              style: TextStyle(
                  color: Color(0xffD4D4FF),
                  fontSize: 20,
                  fontWeight: FontWeight.w300),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              " You are Lose",
              style: TextStyle(
                  color: Color(0xffD4D4FF),
                  fontSize: 20,
                  fontWeight: FontWeight.w300),
            ),
            SizedBox(
              height: 50,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  Navigator.of(context)
                      .pushNamedAndRemoveUntil('Main_Game', (route) => false);
                });
              },
              child: Container(
                height: h * 0.08,
                width: w * 0.5,
                decoration: BoxDecoration(
                  color: Color(0xff1E1F23),
                  borderRadius: BorderRadius.circular(10),
                ),
                alignment: Alignment.center,
                child: Text(
                  "Try again",
                  style: TextStyle(
                    color: Color(0xffD6D6D6),
                    fontSize: 20,
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
