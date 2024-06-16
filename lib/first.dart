//// import 'package:flutter/cupertino.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'main.dart';
import 'second.dart';
import 'third.dart';
import 'fourth.dart';
import 'add_data.dart';

//list=app prog
final auth =FirebaseAuth.instance;

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => const MyApp(),
      'first': (context) => const Firstpage(),
      //'/second': (context) => const Secondpage(),
      '/third': (context) =>  Thirdpage(),
      '/fourth': (context) => const Fourthpage(),


    },
  ));
}
class Firstpage extends StatelessWidget {
  const Firstpage({super.key});

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
                    Navigator.push( context, MaterialPageRoute(builder: (context) => const Secondpage()),);
                  },
                ),
              ],
            ),

          ),
          body: SingleChildScrollView(
              child: Column(
                children:[
                   SizedBox (
                      height:153,
                      child: Row(
                        children: [
                          IconButton(
                            icon: const Icon(Icons.arrow_back),
                            color: Colors.white,
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context) =>  Secondpage()));
                            },
                            // size: 25,
                          ),
                          const SizedBox(
                              width:50
                          ),
                          const Text('App List',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize:40,)
                          ,),
                          const SizedBox(
                            width:90
                          ),
                          // IconButton(
                          //   icon:
                          IconButton(
                            icon: Icon(Icons.apps,
                              size: 30,),
                            color: Colors.white,
                            onPressed: () {
                              _scaffoldKey.currentState?.openEndDrawer();
                            },
                          ),
                          ]),
                      // child:

                  ),

                  Container (
                    height: 630,
                    width:500,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.vertical(top:Radius.circular(20)),
                      color: Colors.white, ),
                      child: Column ( children:[
                        const SizedBox(
                          height:170,
                        ),
                        Container(
                        height: 300,
                        width: 400,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.vertical(top:Radius.circular(60), bottom: Radius.circular(60)),
                            color: Colors.white70,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                offset:  Offset(
                                  0.0,
                                  0.0,
                                ),
                                blurRadius: 5.0,
                                spreadRadius: -5.0,
                              ),
                              BoxShadow(
                                color: Colors.white,
                                offset:  Offset(-10.0, -10.0),
                                blurRadius: 1.0,
                                spreadRadius: -10.0,

                              ),
                              //BoxShadow
                            ]),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize:MainAxisSize.min ,
                          children: [
                            Container(
                              decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.vertical(top:Radius.circular(60), bottom: Radius.circular(60)),
                                  color: Colors.white24,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey,
                                      offset:  Offset(
                                        -3.0,
                                        0.0,
                                      ),
                                      blurRadius: 5.0,
                                      spreadRadius: -5.0,
                                    ),
                                    BoxShadow(
                                      color: Colors.white,
                                      offset:  Offset(-10.0, -10.0),
                                      blurRadius: 1.0,
                                      spreadRadius: -5.0,

                                    ),
                                    //BoxShadow
                                  ]),
                                width: 250,
                                height:85,
                                child:Row( mainAxisAlignment: MainAxisAlignment.center,
                                    children: [ const Icon(
                                      Icons.control_camera,
                                      size: 30,
                                      color: Colors.teal,
                                    ),
                                      TextButton(style:TextButton.styleFrom(
                                          foregroundColor: Colors.teal),
                                          onPressed: (){
                                            Navigator.push(context, MaterialPageRoute(
                                                builder: (context) =>  Thirdpage()));
                                          },child: const Text('Control angle', style: TextStyle(fontSize: 20))),
                                  ]), ),

                            Container(
                              decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.vertical(top:Radius.circular(60), bottom: Radius.circular(60)),
                                  color: Colors.white24,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey,
                                      offset:  Offset(
                                        -3.0,
                                        0.0,
                                      ),
                                      blurRadius: 5.0,
                                      spreadRadius: -5.0,
                                    ),
                                    BoxShadow(
                                      color: Colors.white,
                                      offset:  Offset(-10.0, -10.0),
                                      blurRadius: 1.0,
                                      spreadRadius: -5.0,

                                    ),
                                    //BoxShadow
                                  ]),
                              width: 250,
                              height: 85,
                              child:Row( mainAxisAlignment: MainAxisAlignment.center,
                                  children: [ const Icon(
                                    Icons.assignment_outlined,
                                    size: 25,
                                    color: Colors.teal,
                                  ),
                                    TextButton(style:TextButton.styleFrom(
                                        foregroundColor: Colors.teal,) ,
                                        onPressed: (){
                                          Navigator.push(context, MaterialPageRoute(
                                              builder: (context) =>  Fourthpage()));
                                        },child: const Text('Create To Do list', style: TextStyle(fontSize: 20))),
                                ]), ),



                          ],
                        )
                      ),
                    ], ),
                  ), ],
      )
    ),
    ),
    );
  }
}