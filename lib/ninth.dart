// import 'package:flutter/cupertino.dart';
import 'dart:convert';

import 'package:equmaintain/appprog.dart';
import 'package:equmaintain/bluetooth/main_page.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_blue_plus/flutter_blue_plus.dart';
import 'package:get/get.dart';
import 'main.dart';
import 'first.dart';
import 'second.dart';
import 'fourth.dart';
import 'fifth.dart';
//Patient angle screen = third

void main() {
  runApp(MaterialApp());
}

class Ninthpage extends StatelessWidget {
  Ninthpage({super.key});
  final anglecontroller = TextEditingController();

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
                                    builder: (context) => const appprog()));
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
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                  width: 130,
                                  height: 100,
                                  child: TextField(
                                      controller: anglecontroller,
                                      style: TextStyle(
                                        fontSize: 40,
                                        color: Colors.white,
                                      ),
                                      textAlign: TextAlign.center,
                                      textAlignVertical: TextAlignVertical.top,
                                      decoration: InputDecoration(
                                          alignLabelWithHint: true,
                                          hintText: 'Angle',
                                          border: InputBorder.none,
                                          labelStyle: TextStyle(
                                              fontSize: 20,
                                              color: Colors.teal))))
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
                                    onPressed: () {
                                      sendData(anglecontroller.text);                   //up
                                      sendData("U");
                                    },
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
                                icon: const Icon(Icons.keyboard_arrow_left,                          //left
                                    size: 40),
                                color: Colors.white,
                                onPressed: () {
                                  sendData(anglecontroller.text);
                                  sendData("L");
                                },
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
                                  icon: const Icon(Icons.keyboard_arrow_right,                //right
                                      size: 40),
                                  color: Colors.white,
                                  onPressed: () {
                                    sendData(anglecontroller.text);
                                    sendData("R");
                                  },
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
                                    icon: const Icon(Icons.keyboard_arrow_down,                               //Down
                                        size: 40),
                                    color: Colors.white,
                                    onPressed: () {
                                      sendData(anglecontroller.text);
                                      sendData("D");
                                    },
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
                            )
                          ]),
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
                      width: 200,
                      height: 50,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 200,
                              child: TextButton(
                                  style: TextButton.styleFrom(
                                      foregroundColor: Colors.white),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                            const MainPage()));
                                  },
                                  child: const Text('connect bluetooth',
                                      style: TextStyle(fontSize: 20))),
                            )
                          ]),
                    ),
                  ]),
                )
              ]),
            )));
  }

  void sendData(String data) {
    if (MainPage.connection?.isConnected ?? false) {
      MainPage.connection?.output.add(ascii.encode(data));
    }
  }
}
