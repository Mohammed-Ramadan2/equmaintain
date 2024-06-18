// //import 'package:flutter/cupertino.dart';
import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equmaintain/add_data.dart';
import 'package:equmaintain/data_model.dart';
import 'package:equmaintain/data_show.dart';
import 'package:equmaintain/first.dart';
import 'package:equmaintain/second.dart';
import 'package:equmaintain/usermodel.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'appprog.dart';
import 'ninth.dart';
import 'signinpaitent.dart';
import 'firebase_auth_implementation/useless/seventh.dart';
import 'firebase_auth_implementation/useless/eigtht.dart';

void main() {
  runApp(MaterialApp());
}

class Tenthpage extends StatefulWidget {
  const Tenthpage({super.key});
  @override
  State<Tenthpage> createState() => TenthpageState();
}

class TenthpageState extends State<Tenthpage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final List<DataModel> data = [];
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;
  void _saveddata(DataModel expense) {
    setState(() {
      data.add(expense);
    });
  }



    // void _loadDataFromFirebase() async {
    //   final FirebaseAuth auth = FirebaseAuth.instance;
    //   final User? user = auth.currentUser;

    //   if (user != null) {
    //     final DocumentSnapshot userDoc =
    //         await _firestore.collection('users').doc(user.uid).get();
    //     if (userDoc.exists) {
    //       final userData =
    //           UserModel.fromMap(userDoc.data() as Map<String, dynamic>);
    //       log("message ${userData.assigndoctoruid}");
    //       if (userData.assigndoctoruid != null) {
    //         final DocumentSnapshot doctorDoc = await _firestore
    //             .collection('doctors')
    //             .doc(userData.assigndoctoruid)
    //             .get();
    //         if (doctorDoc.exists) {
    //           final doctorData =
    //               DocModel.fromMap(doctorDoc.data() as Map<String, dynamic>);
    //           setState(() {
    //             data.clear();
    //             if (doctorData.data != null) {
    //               data.addAll(doctorData.data!);
    //             }
    //           });
    //           ScaffoldMessenger.of(context).showSnackBar(
    //             const SnackBar(content: Text('Data loaded successfully!')),
    //           );
    //         } else {
    //           ScaffoldMessenger.of(context).showSnackBar(
    //             const SnackBar(content: Text('Assigned doctor not found')),
    //           );
    //         }
    //       } else {
    //         ScaffoldMessenger.of(context).showSnackBar(
    //           const SnackBar(content: Text('No assigned doctor UID found')),
    //         );
    //       }
    //     } else {
    //       ScaffoldMessenger.of(context).showSnackBar(
    //         const SnackBar(content: Text('User document not found')),
    //       );
    //     }
    //   } else {
    //     ScaffoldMessenger.of(context).showSnackBar(
    //       const SnackBar(content: Text('No user is currently signed in')),
    //     );
    //   }
    // }





    void _loadDataFromFirebase() async {
  final FirebaseAuth auth = FirebaseAuth.instance;
  final User? user = auth.currentUser;

  if (user == null) {
    log('No user is currently signed in');
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('No user is currently signed in')),
    );
    return;
  }

  try {
    log('Fetching user document for UID: ${user.uid}');
    final DocumentSnapshot userDoc = await _firestore.collection('users').doc(user.uid).get();

    if (!userDoc.exists) {
      log('User document not found for UID: ${user.uid}');
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('User document not found')),
      );
      return;
    }

    final userData = UserModel.fromMap(userDoc.data() as Map<String, dynamic>);
    log('User data loaded: ${userData.toMap()}');

    if (userData.assigndoctoruid == null) {
      log('No assigned doctor UID found for user UID: ${user.uid}');
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('No assigned doctor UID found')),
      );
      return;
    }

    log('Fetching doctor document for UID: ${userData.assigndoctoruid}');
    final DocumentSnapshot doctorDoc = await _firestore.collection('doctor').doc(userData.assigndoctoruid).get();

    if (!doctorDoc.exists) {
      log('Assigned doctor document not found for UID: ${userData.assigndoctoruid}');
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Assigned doctor not found')),
      );
      return;
    }

    final doctorData = DocModel.fromMap(doctorDoc.data() as Map<String, dynamic>);
    log('Doctor data loaded: ${doctorData.toMap()}');

    setState(() {
      data.clear();
      if (doctorData.data != null) {
        data.addAll(doctorData.data!);
      }
    });

    log('Data successfully loaded and UI updated');
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Data loaded successfully!')),
    );
  } catch (e) {
    log('Error loading data from Firebase: $e');
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Error loading data')),
    );
  }
}
  

  @override
  Widget build(BuildContext context) {
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
                    "Navigation Menu ",
                    style: TextStyle(fontSize: 30),
                  ),
                  accountEmail: Text(" "),
                  currentAccountPictureSize: Size.square(50), //circleAvatar
                ), //UserAccountDrawerHeader
              ), //DrawerHeader
              ListTile(
                leading: const Icon(Icons.control_camera),
                title: const Text(' Control angle '),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) => Ninthpage()));
                },
              ),
              ListTile(
                leading: const Icon(Icons.assignment_outlined),
                title: const Text(' Create To Do list '),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) => const Tenthpage()));
                },
              ),
              ListTile(
                leading: const Icon(Icons.logout),
                title: const Text('LogOut'),
                onTap: () {
                  _auth.signOut();
                  Navigator.push( context, MaterialPageRoute(builder: (context) => const Signin()),);
                },
              ),
            ],
          ),

        ),
        body: CustomScrollView(slivers: [
          SliverToBoxAdapter(
            child: SizedBox(
              height: 120,
              child: Row(
                children: [
                  Column(
                    children: [
                      const SizedBox(height: 50),
                      Row(
                        children: [
                          const SizedBox(width: 0),
                          IconButton(
                            icon: const Icon(Icons.arrow_back),
                            color: Colors.white,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => appprog()),
                              );
                            },
                          ),
                          const SizedBox(width: 300),
                          IconButton(
                            icon: Icon(Icons.apps, size: 30),
                            color: Colors.white,
                            onPressed: () {
                              _scaffoldKey.currentState?.openEndDrawer();
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SliverFillRemaining(
            child: Container(
              height: 665,
              width: 500,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  const SizedBox(height: 50),
                  Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.vertical(
                          top: Radius.circular(60),
                          bottom: Radius.circular(60)),
                      color: Colors.white24,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(-1.0, 0.0),
                          blurRadius: 5.0,
                          spreadRadius: -5.0,
                        ),
                        BoxShadow(
                          color: Colors.teal,
                          offset: Offset(-1.0, -5.0),
                          blurRadius: 5.0,
                          spreadRadius: -5.0,
                        ),
                      ],
                    ),
                    width: 280,
                    height: 50,
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 165,
                          height: 60,
                          child: Text(
                            "    Your List",
                            style: TextStyle(fontSize: 27, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: DataShow(data: data),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.vertical(
                          top: Radius.circular(60),
                          bottom: Radius.circular(60)),
                      color: Colors.white24,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0.0, 4.0),
                          blurRadius: 2.0,
                          spreadRadius: -5.0,
                        ),
                        BoxShadow(
                          color: Colors.teal,
                          offset: Offset(0.0, 0.0),
                          blurRadius: 4.0,
                          spreadRadius: -5.0,
                        ),
                      ],
                    ),
                    width: 150,
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 150,
                          child: TextButton(
                            style: TextButton.styleFrom(
                              foregroundColor: Colors.white,
                            ),
                            onPressed: _loadDataFromFirebase,
                            child: const Text('Download',
                                style: TextStyle(fontSize: 20)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
