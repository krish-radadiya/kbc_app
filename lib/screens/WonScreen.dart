import 'package:flutter/material.dart';
class Cong_game extends StatefulWidget {
  const Cong_game({Key? key}) : super(key: key);
  @override
  State<Cong_game> createState() => _Cong_gameState();
}
class _Cong_gameState extends State<Cong_game> {

  @override
  Widget build(BuildContext context) {
    Map data = ModalRoute.of(context)!.settings.arguments as Map;
    Size size = MediaQuery.of(context).size;
    double h = size.height;
    double w = size.width;
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Color(0xff000000),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/1.png",
              height: 100,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Your Answer Is Correct",
              style: TextStyle(
                  color: Colors.redAccent.shade200,
                  fontSize: 20,
                  fontWeight: FontWeight.w300),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Your Won \n₹ ${data['Win']}",
              style: TextStyle(

                  color: Color(0xffC78640),
                  fontSize: 20,
                  fontWeight: FontWeight.w300),
            ),
            SizedBox(
              height: 50,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  Navigator.of(context).pop();
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
                  "Next",
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