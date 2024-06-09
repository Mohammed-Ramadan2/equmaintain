// import 'package:flutter/cupertino.dart';
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
      '/third': (context) =>  Thirdpage(),
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
  void _saveddata(DataModel expense) {
    setState(() {
      data.add(expense);
    });
  }
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final List<DataModel> data = [];

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
                  Navigator.push( context, MaterialPageRoute(builder: (context) => const Secondpage()),);
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
                                      IconButton(
                                        icon: Icon(Icons.apps,
                                          size: 30,),
                                        color: Colors.white,
                                        onPressed: () {
                                          _scaffoldKey.currentState?.openEndDrawer();
                                        },
                                      ),
                                    ]),
                              ]),
                        ]),
                  ),),

        SliverFillRemaining(
            child:Container (
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
              Expanded(
                  child: DataShow(data: data)
              ),
              const SizedBox(
                height: 10,
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
                      width: 100,
                      height: 50,
                      child:  Row( mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                             SizedBox(
                              width: 100,
                              child: TextButton(
                                  style: TextButton.styleFrom(
                                      foregroundColor: Colors.white),
                                  onPressed: () {},
                                  child: const Text('Save',
                                      style: TextStyle(fontSize: 20))),

                            ),
                          ])),
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
                            width: 100,
                            height: 50,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: 100,
                                  child: TextButton(
                                      style: TextButton.styleFrom(
                                          foregroundColor: Colors.white),
                                      onPressed: () {
                                        Navigator.of(context).push(
                                          MaterialPageRoute(
                                            builder: (ctx) => AddData(expensedata: _saveddata),
                                          ),
                                        );
                                      },
                                      child: const Text('Add',
                                          style: TextStyle(fontSize: 20))),
                                )
                              ])),
            ]
            ),
          )
        ),
        ]),
        ),
      );
  }
}