// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'sixth.dart';
import 'signinpaitent.dart';
import 'firebase_auth_implementation/useless/seventh.dart';
import 'firebase_auth_implementation/useless/eigtht.dart';

//create to do list

void main() {
  runApp(MaterialApp(

  ));
}

class Tenthpage extends StatefulWidget {
  const Tenthpage({super.key});
  @override
  State<Tenthpage> createState() => TenthpageState(); }

class TenthpageState extends State <Tenthpage> {
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
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    // bool value= true;
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        backgroundColor: Colors.teal[300],
        key: _scaffoldKey,
        endDrawer: Drawer(
          child: ListView(
            padding: const EdgeInsets.all(0),
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.teal,
                ), //BoxDecoration
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Colors.teal),
                  accountName: Text(
                    "\nDr. Potato",
                    style: TextStyle(fontSize: 20),
                  ),
                  accountEmail: Text("Drpotato123@gmail.com"),
                  currentAccountPictureSize: Size.square(50),
                  currentAccountPicture: CircleAvatar(
                    backgroundColor: Color.fromARGB(100, 1, 224,206),
                    child: Text(
                      "P",
                      style: TextStyle(fontSize: 30.0, color: Colors.greenAccent),
                    ), //Text
                  ), //circleAvatar
                ), //UserAccountDrawerHeader
              ), //DrawerHeader
              ListTile(
                leading: const Icon(Icons.person),
                title: const Text(' My Profile '),
                onTap: () {

                },
              ),
              ListTile(
                leading: const Icon(Icons.edit),
                title: const Text(' Edit Profile '),
                onTap: () {

                },
              ),
              ListTile(
                leading: const Icon(Icons.logout),
                title: const Text('LogOut'),
                onTap: () {
                  Navigator.push( context, MaterialPageRoute(builder: (context) => const Signin()),);
                },
              ),
            ],
          ),

        ),
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
                                                  context) => const Sixthpage()));
                                        },
                                        // size: 25,
                                      ),
                                      const SizedBox(
                                          width: 300
                                      ),
                                      IconButton(
                                        icon: const Icon(Icons.apps_rounded),
                                        color: Colors.white,
                                        onPressed: () {
                                          _scaffoldKey.currentState?.openEndDrawer();
                                        },
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
                                    child: Text("Mr. /Ms. " , style: TextStyle(fontSize: 27,
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