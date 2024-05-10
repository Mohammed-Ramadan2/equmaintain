// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'main.dart';
import 'first.dart';
import 'second.dart';
import 'third.dart';
//doctor list
void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => const MyApp(),
      'first': (context) => const Firstpage(),
     // '/second': (context) =>   Secondpage(),
      '/third': (context) =>  Thirdpage(),
      '/fourth': (context) => const Fourthpage(),
    },
  ));
}

class Fourthpage extends StatefulWidget {
  const Fourthpage({super.key});
  @override
  State<Fourthpage> createState() => FourthpageState(); }

class FourthpageState extends State <Fourthpage> {
  bool value = false;
  bool value1 = false;
  bool value2 = false;
  bool value3 = false;
  bool value4 = false;
  // List<bool> Selected=[];
  // initState(){
  //   Selected = List<bool>.filled(List.length, false, growable: true);
  //   super.initState();
  // }
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // bool value= true;
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        backgroundColor: Colors.teal[300],

        body: SingleChildScrollView(
            child: Column(
                children: [
                  SizedBox(
                    height: 120,
                    child: Row(
                        children: [
                          Column(
                              children: [
                                const SizedBox (
                                  height: 50,
                                ),
                                Row(
                                    children: [
                                      const SizedBox(
                                          width: 0
                                      ),
                                      IconButton(
                                        icon: const Icon(Icons.arrow_back),
                                        color: Colors.white,
                                        onPressed: () {
                                          Navigator.push(
                                              context, MaterialPageRoute(
                                              builder: (
                                                  context) => const Firstpage()));
                                        },
                                        // size: 25,
                                      ),
                                      const SizedBox(
                                          width: 300
                                      ),
                                      const Icon(
                                        Icons.apps,
                                        size: 30,
                                        color: Colors.white,
                                      ),
                                    ]),
                              ]),
                        ]),),

          Container (
            height: 665,
            width:500,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.vertical(top:Radius.circular(20)),
              color: Colors.white, ),
            child:  Column ( children:[
              const SizedBox(
                height:50,
              ),
              Container(
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.vertical(top:Radius.circular(60), bottom: Radius.circular(60)),
                      color: Colors.white24,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          offset:  Offset(
                            -1.0,
                            0.0,
                          ),
                          blurRadius: 5.0,
                          spreadRadius: -5.0,
                        ),
                        BoxShadow(
                          color: Colors.teal,
                          offset:  Offset(-1.0, -5.0),
                          blurRadius: 5.0,
                          spreadRadius: -5.0,

                        ),
                        //BoxShadow
                      ]),
                  width: 280,
                  height: 50,
                  child: const Row( mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                            width: 165,
                            height: 60,
                            child: Text("patient name" , style: TextStyle(fontSize: 27,
                              color: Colors.white,
                            )))]
                  )),
              const SizedBox(
                height: 50,
              ),
              Column(
                children: [
                  Container(
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.vertical(top:Radius.circular(60), bottom: Radius.circular(60)),
                          color: Colors.white24,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              offset:  Offset(
                                0.0,
                                4.0,
                              ),
                              blurRadius: 2.0,
                              spreadRadius: -5.0,
                            ),
                            BoxShadow(
                              color: Colors.teal,
                              offset:  Offset(0.0, 0.0),
                              blurRadius: 4.0,
                              spreadRadius: -5.0,

                            ),
                            //BoxShadow
                          ]),
                      width: 330,
                      height: 50,
                      child:  Row( mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const SizedBox(
                              width: 15,
                            ),
                          Container(
                          decoration: const BoxDecoration(
                          borderRadius: BorderRadius.vertical(top:Radius.circular(60), bottom: Radius.circular(60)),
                                color: Colors.white24,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey,
                                    offset:  Offset(
                                      0.0,
                                      4.0,
                                    ),
                                    blurRadius: 2.0,
                                    spreadRadius: -5.0,
                                  ),
                                  BoxShadow(
                                    color: Colors.teal,
                                    offset:  Offset(0.0, 0.0),
                                    blurRadius: 4.0,
                                    spreadRadius: -5.0,

                                  ),
                                  //BoxShadow
                                ]),
                            width: 30,
                            height: 30,
                          child: Checkbox(
                              side: MaterialStateBorderSide.resolveWith(
                                    (Set<MaterialState> states) {
                                  if (states.contains(MaterialState.selected)) {
                                    return const BorderSide(width: 2, color: Colors.transparent);
                                  }
                                  return const BorderSide(width: 1, color: Colors.transparent);
                                },
                              ),
                              checkColor: Colors.white,
                              activeColor: Colors.transparent,

                                  value: value,
                                  onChanged: (bool?value) {
                                  setState(() {
                                  this.value = value!;
                                  });})

                          ),
                            const SizedBox(
                              width: 10,
                            ),

                            const Text('Direction > angle 60` time: 00:15',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17
                              )),]),),

                  Container(
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.vertical(top:Radius.circular(60), bottom: Radius.circular(60)),
                        color: Colors.white24,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            offset:  Offset(
                              0.0,
                              4.0,
                            ),
                            blurRadius: 2.0,
                            spreadRadius: -5.0,
                          ),
                          BoxShadow(
                            color: Colors.teal,
                            offset:  Offset(0.0, 0.0),
                            blurRadius: 4.0,
                            spreadRadius: -5.0,

                          ),
                          //BoxShadow
                        ]),
                    width: 330,
                    height: 50,
                    child:  Row( mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const SizedBox(
                            width: 15,
                          ),
                          Container(
                            decoration: const BoxDecoration(
                                borderRadius: BorderRadius.vertical(top:Radius.circular(60), bottom: Radius.circular(60)),
                                color: Colors.white24,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey,
                                    offset:  Offset(
                                      0.0,
                                      4.0,
                                    ),
                                    blurRadius: 2.0,
                                    spreadRadius: -5.0,
                                  ),
                                  BoxShadow(
                                    color: Colors.teal,
                                    offset:  Offset(0.0, 0.0),
                                    blurRadius: 4.0,
                                    spreadRadius: -5.0,

                                  ),
                                  //BoxShadow
                                ]),
                            width: 30,
                            height: 30,
                            child: Checkbox(
                                side: MaterialStateBorderSide.resolveWith(
                                      (Set<MaterialState> states) {
                                    if (states.contains(MaterialState.selected)) {
                                      return const BorderSide(width: 2, color: Colors.transparent);
                                    }
                                    return const BorderSide(width: 1, color: Colors.transparent);
                                  },
                                ),
                                checkColor: Colors.white,
                                activeColor: Colors.transparent,
                                value: value1,
                                onChanged: (bool?value) {
                                  setState(() {
                                    this.value1 = value!;
                                  });
                                }
                            ),),
                          const SizedBox(
                            width: 10,
                          ),

                          const Text('Direction > angle 60` time: 00:15',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17
                              )),]),),
                  Container(
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.vertical(top:Radius.circular(60), bottom: Radius.circular(60)),
                        color: Colors.white24,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            offset:  Offset(
                              0.0,
                              4.0,
                            ),
                            blurRadius: 2.0,
                            spreadRadius: -5.0,
                          ),
                          BoxShadow(
                            color: Colors.teal,
                            offset:  Offset(0.0, 0.0),
                            blurRadius: 4.0,
                            spreadRadius: -5.0,

                          ),
                          //BoxShadow
                        ]),
                    width: 330,
                    height: 50,
                    child:  Row( mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const SizedBox(
                            width: 15,
                          ),
                          Container(
                            decoration: const BoxDecoration(
                                borderRadius: BorderRadius.vertical(top:Radius.circular(60), bottom: Radius.circular(60)),
                                color: Colors.white24,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey,
                                    offset:  Offset(
                                      0.0,
                                      4.0,
                                    ),
                                    blurRadius: 2.0,
                                    spreadRadius: -5.0,
                                  ),
                                  BoxShadow(
                                    color: Colors.teal,
                                    offset:  Offset(0.0, 0.0),
                                    blurRadius: 4.0,
                                    spreadRadius: -5.0,

                                  ),
                                  //BoxShadow
                                ]),
                            width: 30,
                            height: 30,
                            child: Checkbox(
                                side: MaterialStateBorderSide.resolveWith(
                                      (Set<MaterialState> states) {
                                    if (states.contains(MaterialState.selected)) {
                                      return const BorderSide(width: 2, color: Colors.transparent);
                                    }
                                    return const BorderSide(width: 1, color: Colors.transparent);
                                  },
                                ),
                                checkColor: Colors.white,
                                activeColor: Colors.transparent,
                                value: value2,
                                onChanged: (bool?value) {
                                  setState(() {
                                    this.value2 = value!;
                                  });
                                }
                            ),),
                          const SizedBox(
                            width: 10,
                          ),

                          const Text('Direction > angle 60` time: 00:15',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17
                              )),]),),
                  Container(
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.vertical(top:Radius.circular(60), bottom: Radius.circular(60)),
                        color: Colors.white24,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            offset:  Offset(
                              0.0,
                              4.0,
                            ),
                            blurRadius: 2.0,
                            spreadRadius: -5.0,
                          ),
                          BoxShadow(
                            color: Colors.teal,
                            offset:  Offset(0.0, 0.0),
                            blurRadius: 4.0,
                            spreadRadius: -5.0,

                          ),
                          //BoxShadow
                        ]),
                    width: 330,
                    height: 50,
                    child:  Row( mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const SizedBox(
                            width: 15,
                          ),
                          Container(
                            decoration: const BoxDecoration(
                                borderRadius: BorderRadius.vertical(top:Radius.circular(60), bottom: Radius.circular(60)),
                                color: Colors.white24,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey,
                                    offset:  Offset(
                                      0.0,
                                      4.0,
                                    ),
                                    blurRadius: 2.0,
                                    spreadRadius: -5.0,
                                  ),
                                  BoxShadow(
                                    color: Colors.teal,
                                    offset:  Offset(0.0, 0.0),
                                    blurRadius: 4.0,
                                    spreadRadius: -5.0,

                                  ),
                                  //BoxShadow
                                ]),
                            width: 30,
                            height: 30,
                            child: Checkbox(
                                side: MaterialStateBorderSide.resolveWith(
                                      (Set<MaterialState> states) {
                                    if (states.contains(MaterialState.selected)) {
                                      return const BorderSide(width: 2, color: Colors.transparent);
                                    }
                                    return const BorderSide(width: 1, color: Colors.transparent);
                                  },
                                ),
                                checkColor: Colors.white,
                                activeColor: Colors.transparent,
                                value: value3,
                                onChanged: (bool?value) {
                                  setState(() {
                                    this.value3 = value!;
                                  });
                                }
                            ),),
                          const SizedBox(
                            width: 10,
                          ),

                          const Text('Direction > angle 60` time: 00:15',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17
                              )),]),),
                  Container(
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.vertical(top:Radius.circular(60), bottom: Radius.circular(60)),
                        color: Colors.white24,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            offset:  Offset(
                              0.0,
                              4.0,
                            ),
                            blurRadius: 2.0,
                            spreadRadius: -5.0,
                          ),
                          BoxShadow(
                            color: Colors.teal,
                            offset:  Offset(0.0, 0.0),
                            blurRadius: 4.0,
                            spreadRadius: -5.0,

                          ),
                          //BoxShadow
                        ]),
                    width: 330,
                    height: 50,
                    child:  Row( mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const SizedBox(
                            width: 15,
                          ),
                          Container(
                            decoration: const BoxDecoration(
                                borderRadius: BorderRadius.vertical(top:Radius.circular(60), bottom: Radius.circular(60)),
                                color: Colors.white24,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey,
                                    offset:  Offset(
                                      0.0,
                                      4.0,
                                    ),
                                    blurRadius: 2.0,
                                    spreadRadius: -5.0,
                                  ),
                                  BoxShadow(
                                    color: Colors.teal,
                                    offset:  Offset(0.0, 0.0),
                                    blurRadius: 4.0,
                                    spreadRadius: -5.0,

                                  ),
                                  //BoxShadow
                                ]),
                            width: 30,
                            height: 30,
                            child: Checkbox(
                                side: MaterialStateBorderSide.resolveWith(
                                      (Set<MaterialState> states) {
                                    if (states.contains(MaterialState.selected)) {
                                      return const BorderSide(width: 2, color: Colors.transparent);
                                    }
                                    return const BorderSide(width: 1, color: Colors.transparent);
                                  },
                                ),
                                checkColor: Colors.white,
                                activeColor: Colors.transparent,
                                value: value4,
                                onChanged: (bool?value) {
                                  setState(() {
                                    this.value4 = value!;
                                  });
                                }
                            ),),
                          const SizedBox(
                            width: 10,
                          ),

                          const Text('Direction > angle 60` time: 00:15',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17
                              )),]),),

                            const SizedBox(
                              width: 10,
                            ),

                            const Text('Direction > angle 60` time: 00:15',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17
                                ))
                ],
              ),

              const SizedBox(
                height: 160,
              ),
              Container(
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.vertical(top:Radius.circular(60), bottom: Radius.circular(60)),
                      color: Colors.white24,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          offset:  Offset(
                            -2.0,
                            0.0,
                          ),
                          blurRadius: 3.0,
                          spreadRadius: -5.0,
                        ),
                        BoxShadow(
                          color: Colors.teal,
                          offset:  Offset(-1.0, -3.0),
                          blurRadius: 3.0,
                          spreadRadius: -5.0,

                        ),
                        //BoxShadow
                      ]),
                  width: 100,
                  height: 50,
                  child: Row( mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 100,
                          child: TextButton(style:TextButton.styleFrom(
                              foregroundColor: Colors.white),
                              onPressed: (){},child: const Text('Save', style: TextStyle(fontSize: 20))),
                        )]
                  )),

            ]
            ),
          )])
        ),
      ),
    );
  }
}