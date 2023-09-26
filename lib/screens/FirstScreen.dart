import 'package:flutter/material.dart';

int indexvalue = 0;

class Main_Game extends StatefulWidget {
  const Main_Game({super.key});

  @override
  State<Main_Game> createState() => _FirstScreenState();
}

int marks = 0;
// var Ques = [
//   {
//     "question": "1.the international literacy day is observed on",
//     "correct_answer": "sep 8",
//     "answers": [
//       "sep 8",
//       "nov 28",
//       "may 2",
//       "sep 22",
//     ]
//   },
//   {
//     "question":
//         " Vault, uneven bars, and floor exercise are events in which sport?",
//     "correct_answer": "None of these",
//     "answers": [
//       "Wrestling",
//       "Skating",
//       "Gymnastics",
//       "None of these",
//     ]
//   },
//   {
//     "question": "3. which of the following corresponds to 'ek bataa'do",
//     "correct_answer": "Adha",
//     "answers": [
//       "pura",
//       "sawa",
//       "Adha",
//       "pauna",
//     ]
//   },
//   {
//     "question":
//         "4. In the game of ludo the discs or tokens are of how many colors",
//     "correct_answer": "four",
//     "answers": [
//       "one",
//       "two",
//       "three",
//       "four",
//     ]
//   },
//   {
//     "question":
//         "5. Released in 2001, the first edition of Apple&#039;s Mac OS Xoperating system (version 10.0) was given what animal code name?",
//     "correct_answer": "Cheetah",
//     "answers": [
//       "Puma",
//       "Cheetah",
//       "Tiger",
//       "Leopard",
//     ]
//   },
//   {
//     "question": "6.where was the Brics summit held in 2014?",
//     "correct_answer": "brazil",
//     "answers": [
//       "brazil",
//       "india",
//       "russia",
//       "china",
//     ]
//   },
//   {
//     "question": "7. Which of these terms can only be used for women?",
//     "correct_answer": " Suhagan",
//     "answers": [
//       "Dirghaayu",
//       " Suhagan",
//       "Chiranjeevi",
//       "Sushil",
//     ]
//   },
//   {
//     "question":
//         "8. Which of these is not a layer in the OSI model for data communications?",
//     "correct_answer": "Connection Layer",
//     "answers": [
//       "Application Layer",
//       "Transport Layer",
//       "Connection Layer",
//       "Physical Layer",
//     ]
//   },
//   {
//     "question":
//         "9.Who wrote the introduction to the English translation of Rabindranath Tagore’s Gitanjali?",
//     "correct_answer": " W.B. Yeats ",
//     "answers": [
//       " P.B. Shelley ",
//       "Alfred Tennyson",
//       " W.B. Yeats",
//       "T.S. Elliot",
//     ]
//   },
//   {
//     "question":
//         "10.Which of these are names of national parks located in MadhyaPradesh?",
//     "correct_answer": "Kanha and Madhav",
//     "answers": [
//       "Kanha and Madhav",
//       "Krishna and Kanhaiya",
//       "Ghanshyam and Murari",
//       "Girdhar and Gopal",
//     ]
//   }
// ];
List Ques = [
  {
    "Q1": "1.What is Flutter? ",
    "Q2":
        "2.Who developed the Flutter Framework and continues to maintain ittoday?",
    "Q3":
        "3.Which programming language is used to build Flutter applications? ",
    "Q4": "4.How many types of widgets are there in Flutter? ",
    "Q5":
        "5.When building for iOS, Flutter is restricted to an __ compilation strategy",
    "A1": "Flutter is an open-source backend development framework",
    "A2": "Facebook",
    "A3": "Kotlin",
    "A4": "2",
    "A5": "AOT (ahead-of-time)",
    "B1": "Flutter is an open-source UI toolkit",
    "B2": " Microsoft",
    "B3": "Dart",
    "B4": "6",
    "B5": "JIT (Just-in-time)",
    "C1":
        "Flutter is an open-source programming language for cross-platformapplications",
    "C2": "Google",
    "C3": "Java",
    "C4": "8+",
    "C5": "Transcompilation",
    "D1": "Flutters is a DBMS toolkit",
    "D2": "Oracle",
    "D3": "Go",
    "D4": "4",
    "D5": "Recompilation",
    "Ans1": "Flutter is an open-source UI toolkit",
    "Ans2": "Google",
    "Ans3": "Dart",
    "Ans4": "2",
    "Ans5": "AOT (ahead-of-time)",
    "Win": 0,
    "x": 0,
  }
];

class _FirstScreenState extends State<Main_Game> {
  int i = 1;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double h = size.height;
    double w = size.width;
    return Scaffold(
      body: (i == 11)
          ? Container(
              height: double.infinity,
              width: double.infinity,
              color: const Color(0xff000000),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/fire-cracker.png",
                    height: 100,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Congratulations",
                    style: TextStyle(
                        color: Color(0xff5B5F62),
                        fontSize: 20,
                        fontWeight: FontWeight.w300),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    "Game Over",
                    style: TextStyle(
                        color: Color(0xffFFFFFF),
                        fontSize: 20,
                        fontWeight: FontWeight.w300),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        Navigator.of(context).pushNamedAndRemoveUntil(
                            'Main_Game', (route) => false);
                      });
                    },
                    child: Container(
                      height: h * 0.08,
                      width: w * 0.5,
                      decoration: BoxDecoration(
                        color: const Color(0xff1E1F23),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      alignment: Alignment.center,
                      child: const Text(
                        "Restart",
                        style: TextStyle(
                          color: Color(0xffD6D6D6),
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          : SingleChildScrollView(
              child: Column(
                children: [
                  ...Ques.map(
                    (e) => Column(
                      children: [
                        Container(
                          height: h * 0.55,
                          width: w * 1.99,
                          color: Colors.primaries[18 % i],
                          alignment: Alignment.center,
                          child: Padding(
                            padding: const EdgeInsets.all(40),
                            child: Text(
                              "${e['Q${e['x'] + i}']}",
                              style: const TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: h * 0.45,
                          width: w * 1.99,
                          color: const Color(0xff000000),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 100, left: 20),
                                    child: GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          if (e['A${e['x'] + i}'] ==
                                              e['Ans${e['x'] + i}']) {
                                            Navigator.of(context).pushNamed(
                                                'Cong_game',
                                                arguments: e);
                                            if (i == 1) {
                                              e['Win'] += 1000;
                                            } else if (i == 2) {
                                              e['Win'] += 1000;
                                            } else if (i == 3) {
                                              e['Win'] += 1000;
                                            } else if (i == 4) {
                                              e['Win'] += 2000;
                                            } else if (i == 5) {
                                              e['Win'] += 5000;
                                            }
                                            i++;
                                          } else {
                                            Navigator.of(context).pushNamed(
                                                'Lose_game',
                                                arguments: e);
                                          }
                                        });
                                      },
                                      child: Container(
                                        height: h * 0.09,
                                        width: w * 0.44,
                                        decoration: BoxDecoration(
                                          color: const Color(0xff1E1F23),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        alignment: Alignment.center,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            "A. ${e['A${e['x'] + i}']}",
                                            style: const TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.normal,
                                                color: Color(0xffA8A8A9)),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 100, left: 20),
                                    child: GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          if (e['B${e['x'] + i}'] ==
                                              e['Ans${e['x'] + i}']) {
                                            Navigator.of(context).pushNamed(
                                                'Cong_game',
                                                arguments: e);
                                            if (i == 1) {
                                              e['Win'] += 1000;
                                            } else if (i == 2) {
                                              e['Win'] += 1000;
                                            } else if (i == 3) {
                                              e['Win'] += 1000;
                                            } else if (i == 4) {
                                              e['Win'] += 2000;
                                            } else if (i == 5) {
                                              e['Win'] += 5000;
                                            }
                                            i++;
                                          } else {
                                            Navigator.of(context).pushNamed(
                                                'Lose_game',
                                                arguments: e);
                                          }
                                        });
                                      },
                                      child: Container(
                                        height: h * 0.09,
                                        width: w * 0.44,
                                        decoration: BoxDecoration(
                                          color: const Color(0xff1E1F23),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        alignment: Alignment.center,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            "B. ${e['B${e['x'] + i}']}",
                                            style: const TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.normal,
                                                color: Color(0xffA8A8A9)),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 30, left: 20),
                                    child: GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          if (e['C${e['x'] + i}'] ==
                                              e['Ans${e['x'] + i}']) {
                                            Navigator.of(context).pushNamed(
                                                'Cong_game',
                                                arguments: e);
                                            if (i == 1) {
                                              e['Win'] += 1000;
                                            } else if (i == 2) {
                                              e['Win'] += 1000;
                                            } else if (i == 3) {
                                              e['Win'] += 1000;
                                            } else if (i == 4) {
                                              e['Win'] += 2000;
                                            } else if (i == 5) {
                                              e['Win'] += 5000;
                                            }
                                            i++;
                                          } else {
                                            Navigator.of(context).pushNamed(
                                                'Lose_game',
                                                arguments: e);
                                          }
                                        });
                                      },
                                      child: Container(
                                        height: h * 0.09,
                                        width: w * 0.44,
                                        decoration: BoxDecoration(
                                          color: const Color(0xff1E1F23),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        alignment: Alignment.center,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            "C. ${e['C${e['x'] + i}']}",
                                            style: const TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.normal,
                                                color: Color(0xffA8A8A9)),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 30, left: 20),
                                    child: GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          if (e['D${e['x'] + i}'] ==
                                              e['Ans${e['x'] + i}']) {
                                            Navigator.of(context).pushNamed(
                                                'Cong_game',
                                                arguments: e);
                                            if (i == 1) {
                                              e['Win'] += 1000;
                                            } else if (i == 2) {
                                              e['Win'] += 1000;
                                            } else if (i == 3) {
                                              e['Win'] += 1000;
                                            } else if (i == 4) {
                                              e['Win'] += 2000;
                                            } else if (i == 5) {
                                              e['Win'] += 5000;
                                            }
                                            i++;
                                          } else {
                                            Navigator.of(context).pushNamed(
                                                'Lose_game',
                                                arguments: e);
                                          }
                                        });
                                      },
                                      child: Container(
                                        height: h * 0.09,
                                        width: w * 0.44,
                                        decoration: BoxDecoration(
                                          color: const Color(0xff1E1F23),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        alignment: Alignment.center,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            "D. ${e['D${e['x'] + i}']}",
                                            style: const TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.normal,
                                                color: Color(0xffA8A8A9)),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ).toList(),
                ],
              ),
            ),
    );
  }
}
