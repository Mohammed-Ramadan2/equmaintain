// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'main.dart';
import 'first.dart';
import 'second.dart';
import 'third.dart';
import 'fourth.dart';
import 'fifth.dart';
import 'sixth.dart';
import 'firebase_auth_implementation/useless/seventh.dart';
import 'firebase_auth_implementation/useless/eigtht.dart';

//angle screen patient

void main() {
  runApp(MaterialApp(
    // initialRoute: '/',
    routes: {
      '/': (context) => const MyApp(),
      '/first': (context) => const Firstpage(),
      // '/second': (context) =>  Secondpage(),
      '/third': (context) => Thirdpage(),
      '/fourth': (context) => const Fourthpage(),
      //'/fifth': (context) => const Fifthpage(),
      '/Sixth': (context) => const Sixthpage(),
      //'/Seventh': (context) => const Seventhpage(),
      //'/eigtht': (context) => const Eigthtpage(),
    },
  ));
}

class Ninthpage extends StatelessWidget {
  const Ninthpage({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: Colors.teal[300],
            body: SingleChildScrollView(
              child: Column(children: [
                SizedBox(
                  height: 120,
                  child: Row(children: [
                    Column(children: [
                      const SizedBox(
                        height: 50,
                      ),
                      Row(children: [
                        const SizedBox(width: 10),
                        IconButton(
                          icon: const Icon(Icons.arrow_back),
                          color: Colors.white,
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Sixthpage()));
                          },
                        ),
                        const SizedBox(width: 285),
                        const Icon(
                          Icons.apps,
                          size: 30,
                          color: Colors.white,
                        ),
                      ]),
                    ]),
                  ]),
                ),
                Container(
                  height: 665,
                  width: 500,
                  decoration: const BoxDecoration(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(20)),
                    color: Colors.white,
                  ),
                  child: Column(children: [
                    const SizedBox(
                      height: 50,
                    ),
                    Container(
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(60),
                                bottom: Radius.circular(60)),
                            color: Colors.white24,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                offset: Offset(
                                  -1.0,
                                  0.0,
                                ),
                                blurRadius: 5.0,
                                spreadRadius: -5.0,
                              ),
                              BoxShadow(
                                color: Colors.teal,
                                offset: Offset(-1.0, -5.0),
                                blurRadius: 5.0,
                                spreadRadius: -5.0,
                              ),
                              //BoxShadow
                            ]),
                        width: 200,
                        height: 85,
                        child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                  width: 130,
                                  height: 100,
                                  child: Text('60`',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 60,
                                        color: Colors.white,
                                      )))
                            ])),
                    const SizedBox(
                      height: 50,
                    ),
                    Column(
                      children: [
                        Container(
                            decoration: const BoxDecoration(
                                borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(60),
                                    bottom: Radius.circular(60)),
                                color: Colors.white24,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey,
                                    offset: Offset(
                                      0.0,
                                      2.5,
                                    ),
                                    blurRadius: 2.0,
                                    spreadRadius: -5.0,
                                  ),
                                  BoxShadow(
                                    color: Colors.teal,
                                    offset: Offset(0.0, -5.0),
                                    blurRadius: 4.0,
                                    spreadRadius: -5.0,
                                  ),
                                  //BoxShadow
                                ]),
                            width: 70,
                            height: 70,
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  IconButton(
                                    icon: const Icon(Icons.keyboard_arrow_up,
                                        size: 40),
                                    color: Colors.white,
                                    onPressed: () {},
                                  ),
                                ])),
                      ],
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Container(
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(60),
                                bottom: Radius.circular(60)),
                            color: Colors.white24,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                offset: Offset(
                                  5.0,
                                  0.0,
                                ),
                                blurRadius: 2.0,
                                spreadRadius: -5.0,
                              ),
                              BoxShadow(
                                color: Colors.teal,
                                offset: Offset(-1.0, 0.0),
                                blurRadius: 4.0,
                                spreadRadius: -5.0,
                              ),
                              //BoxShadow
                            ]),
                        width: 70,
                        height: 70,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              IconButton(
                                icon: const Icon(Icons.keyboard_arrow_left,
                                    size: 40),
                                color: Colors.white,
                                onPressed: () {},
                              ),
                            ]),
                      ),
                      SizedBox(
                        width: 60,
                        child: IconButton(
                          icon: const Icon(Icons.power_settings_new_outlined,
                              size: 40),
                          color: Colors.teal,
                          onPressed: () {},
                        ),
                      ),
                      Container(
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(60),
                                  bottom: Radius.circular(60)),
                              color: Colors.white24,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  offset: Offset(
                                    -5.0,
                                    0.0,
                                  ),
                                  blurRadius: 2.0,
                                  spreadRadius: -5.0,
                                ),
                                BoxShadow(
                                  color: Colors.teal,
                                  offset: Offset(1.0, 0.0),
                                  blurRadius: 4.0,
                                  spreadRadius: -5.0,
                                ),
                                //BoxShadow
                              ]),
                          width: 70,
                          height: 70,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                IconButton(
                                  icon: const Icon(Icons.keyboard_arrow_right,
                                      size: 40),
                                  color: Colors.white,
                                  onPressed: () {},
                                ),
                              ]))
                    ]),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                            decoration: const BoxDecoration(
                                borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(60),
                                    bottom: Radius.circular(60)),
                                color: Colors.white24,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey,
                                    offset: Offset(
                                      0.0,
                                      -4.0,
                                    ),
                                    blurRadius: 2.0,
                                    spreadRadius: -5.0,
                                  ),
                                  BoxShadow(
                                    color: Colors.teal,
                                    offset: Offset(0.0, 3.0),
                                    blurRadius: 4.0,
                                    spreadRadius: -5.0,
                                  ),
                                  //BoxShadow
                                ]),
                            width: 70,
                            height: 70,
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  IconButton(
                                    icon: const Icon(Icons.keyboard_arrow_down,
                                        size: 40),
                                    color: Colors.white,
                                    onPressed: () {},
                                  ),
                                ])),
                      ],
                    ),
                    const SizedBox(
                      height: 160,
                    ),
                    Container(
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(60),
                                bottom: Radius.circular(60)),
                            color: Colors.white24,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                offset: Offset(
                                  -2.0,
                                  0.0,
                                ),
                                blurRadius: 3.0,
                                spreadRadius: -5.0,
                              ),
                              BoxShadow(
                                color: Colors.teal,
                                offset: Offset(-1.0, -3.0),
                                blurRadius: 3.0,
                                spreadRadius: -5.0,
                              ),
                              //BoxShadow
                            ]),
                        width: 120,
                        height: 60,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 100,
                                child: TextButton(
                                    style: TextButton.styleFrom(
                                        foregroundColor: Colors.white),
                                    onPressed: () {},
                                    child: const Text('Apply',
                                        style: TextStyle(fontSize: 20))),
                              ),
                            ])),
                  ]),
                )
              ]),
            )));
  }
}
