// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'main.dart';
import 'second.dart';
import 'third.dart';
import 'fourth.dart';

//list=app prog

void main() {
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

    return MaterialApp(
        debugShowCheckedModeBanner: false,

        home: Scaffold(
          backgroundColor: Colors.teal[300],

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
                          const Text('Dr.Potato',
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
                            const Icon(
                              Icons.apps,
                           size: 30,
                           color: Colors.white,
                           ),
                            // onPressed: (){
                            //
                            // },
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
                                              builder: (context) => const Fourthpage()));
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