// import 'package:flutter/cupertino.dart';
import 'package:equmaintain/bluetooth/widgets/action_button.dart';

import 'dart:convert';

import 'package:equmaintain/bluetooth/main_page.dart';
import 'package:flutter/material.dart';


//doctor angle screen

void main() {
  runApp(MaterialApp());
}

class Thirdpage extends StatelessWidget {
  Thirdpage({super.key});
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
                            //Navigator.push(
                               // context,
                                //MaterialPageRoute(
                                   // builder: (context) => const Firstpage()));
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
                                      keyboardType: TextInputType.number,
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
                                  ActionButton(
                                    text: "${"    Up    "}",
                                    color: Colors.transparent,
                                    onTap: () async{sendData('4');
                                   // Future.delayed(const Duration(milliseconds: 50),);
                                    sendData(anglecontroller.text);
                                    sendData('-');
                                    },
                                  ),
                                  // IconButton(
                                  //   icon: const Icon(Icons.keyboard_arrow_up,
                                  //       size: 40),
                                  //   color: Colors.white,
                                  //   onPressed: () {
                                  //     //sendData(anglecontroller.text);                   //up
                                  //    // sendData("U");
                                  //     sendData("0");
                                  //   },
                                  // ),
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
                              ActionButton(
                                text: "${"   Left   "}",
                                color: Colors.transparent,
                                onTap: () async{sendData('1');
                                //Future.delayed(const Duration(milliseconds: 50),);
                                sendData(anglecontroller.text);
                                sendData('-');
                                },
                              ),
                            ]),
                      ),
                     /* SizedBox(
                        width: 60,
                        child: IconButton(
                          icon: const Icon(Icons.power_settings_new_outlined,
                              size: 40),
                          color: Colors.teal,
                          onPressed: () {},
                        ),
                      ),*/
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
                              ActionButton(
                                text: "${"  Reset  "}",
                                color: Colors.transparent,
                                onTap: () async{sendData('#');
                                //Future.delayed(const Duration(milliseconds: 50),);
                                sendData('-');
                                },
                              ),
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
                                ActionButton(
                                  text: "${"  Right  "}",
                                  color: Colors.transparent,
                                  onTap: () async{sendData('2');
                                 // Future.delayed(const Duration(milliseconds: 50),);
                                  sendData(anglecontroller.text);
                                  sendData('-');
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
                                  ActionButton(
                                    text: "${" Down "}",
                                    color: Colors.transparent,
                                    onTap: () async{sendData('3');
                                   // Future.delayed(const Duration(milliseconds: 50),);
                                    sendData(anglecontroller.text);
                                    sendData('-');
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
                                  child: const Text('Bluetooth connection',
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
