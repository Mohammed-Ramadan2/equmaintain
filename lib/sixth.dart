import 'package:equmaintain/signinpaitent.dart';
import 'package:flutter/material.dart';
import 'main.dart';
import 'first.dart';
import 'second.dart';
import 'tenth.dart';
import 'ninth.dart';

//doc angle screen

void main() {
  runApp(MaterialApp(
    routes: {
      '/': (context) => const MyApp(),
      'first': (context) => const Firstpage(),
      '/second': (context) => const Secondpage(),
      '/seventh': (context) => const Signin(),

    },
  ));
}

class Sixthpage extends StatelessWidget {
  const Sixthpage({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
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
              height: 153,
              child: Row(children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back),
                  color: Colors.white,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Secondpage()));
                  },
                  // size: 25,
                ),
                const SizedBox(width: 20),
                const Text(
                  'Mr.Potato',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                  ),
                ),
                const SizedBox(width: 90),
                // IconButton(
                //   icon:
                IconButton(
                    icon: const Icon(Icons.apps_rounded),
                    color: Colors.white,
                    onPressed: () {
                      _scaffoldKey.currentState?.openEndDrawer(); }
                ),
              ]),
              // child:
            ),
            Container(
              height: 630,
              width: 500,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 170,
                  ),
                  Container(
                      height: 300,
                      width: 400,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.vertical(
                              top: Radius.circular(60),
                              bottom: Radius.circular(60)),
                          color: Colors.white70,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              offset: Offset(
                                0.0,
                                0.0,
                              ),
                              blurRadius: 5.0,
                              spreadRadius: -5.0,
                            ),
                            BoxShadow(
                              color: Colors.white,
                              offset: Offset(-10.0, -10.0),
                              blurRadius: 1.0,
                              spreadRadius: -10.0,
                            ),
                            //BoxShadow
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
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
                                      -3.0,
                                      0.0,
                                    ),
                                    blurRadius: 5.0,
                                    spreadRadius: -5.0,
                                  ),
                                  BoxShadow(
                                    color: Colors.white,
                                    offset: Offset(-10.0, -10.0),
                                    blurRadius: 1.0,
                                    spreadRadius: -5.0,
                                  ),
                                  //BoxShadow
                                ]),
                            width: 250,
                            height: 85,
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Icon(
                                    Icons.control_camera,
                                    size: 30,
                                    color: Colors.teal,
                                  ),
                                  TextButton(
                                      style: TextButton.styleFrom(
                                          foregroundColor: Colors.teal),
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => Ninthpage()));
                                      },
                                      child: const Text('Angle',
                                          style: TextStyle(fontSize: 20))),
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
                                      -3.0,
                                      0.0,
                                    ),
                                    blurRadius: 5.0,
                                    spreadRadius: -5.0,
                                  ),
                                  BoxShadow(
                                    color: Colors.white,
                                    offset: Offset(-10.0, -10.0),
                                    blurRadius: 1.0,
                                    spreadRadius: -5.0,
                                  ),
                                  //BoxShadow
                                ]),
                            width: 250,
                            height: 85,
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Icon(
                                    Icons.assignment_outlined,
                                    size: 25,
                                    color: Colors.teal,
                                  ),
                                  TextButton(
                                      style: TextButton.styleFrom(
                                        foregroundColor: Colors.teal,
                                      ),
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const Tenthpage()));
                                      },
                                      child: const Text('To Do list',
                                          style: TextStyle(fontSize: 20))),
                                ]), ),
                      ] ),
                  ),
                ], ),
            ),],
        )
    ),
      ),
    );
  }
}
