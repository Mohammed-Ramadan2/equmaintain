// import 'package:flutter/cupertino.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equmaintain/usermodel.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'main.dart';
import 'first.dart';
import 'second.dart';
import 'third.dart';
import 'add_data.dart';
import 'data_show.dart';
import 'data_model.dart';

//doctor to do list
void main() {
  runApp(MaterialApp(
    routes: {
      '/': (context) => const MyApp(),
      'first': (context) => const Firstpage(),
      '/second': (context) => const Secondpage(),
      '/third': (context) => Thirdpage(),
    },
  ));
}

class Fourthpage extends StatefulWidget {
  const Fourthpage({super.key});

  @override
  State<Fourthpage> createState() => FourthpageState();
}

class FourthpageState extends State<Fourthpage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final List<DataModel> data = [];
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  void _saveddata(DataModel expense) {
    setState(() {
      data.add(expense);
    });
  }

  void _saveToFirebase() async {
    final FirebaseAuth auth = FirebaseAuth.instance;
    final User? user = auth.currentUser;

    if (user != null) {
      final docModel = DocModel(
        uid: user.uid,
        name: user.displayName,
        email: user.email,
        data: data,
      );

      try {
        await _firestore
            .collection('doctor')
            .doc(user.uid)
            .set(docModel.toMap());
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Data saved successfully!')),
        );
      } catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Failed to save data: $e')),
        );
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('No user is currently signed in')),
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
                ),
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Colors.teal),
                  accountName: Text(
                    "\nDr. Potato",
                    style: TextStyle(fontSize: 20),
                  ),
                  accountEmail: Text("Drpotato123@gmail.com"),
                  currentAccountPictureSize: Size.square(50),
                  currentAccountPicture: CircleAvatar(
                    backgroundColor: Color.fromARGB(100, 1, 224, 206),
                    child: Text(
                      "P",
                      style:
                          TextStyle(fontSize: 30.0, color: Colors.greenAccent),
                    ),
                  ),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.person),
                title: const Text(' My Profile '),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.edit),
                title: const Text(' Edit Profile '),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.logout),
                title: const Text('LogOut'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Secondpage()),
                  );
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
                                    builder: (context) => const Firstpage()),
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
                    width: 290,
                    height: 50,
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 200,
                          height: 60,
                          child: Text(
                            "Create Program",
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
                    width: 100,
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 100,
                          child: TextButton(
                            style: TextButton.styleFrom(
                              foregroundColor: Colors.white,
                            ),
                            onPressed: _saveToFirebase,
                            child: const Text('Save',
                                style: TextStyle(fontSize: 20)),
                          ),
                        ),
                      ],
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
                    width: 100,
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 100,
                          child: TextButton(
                            style: TextButton.styleFrom(
                              foregroundColor: Colors.white,
                            ),
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (ctx) =>
                                      AddData(expensedata: _saveddata),
                                ),
                              );
                            },
                            child: const Text('Add',
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
