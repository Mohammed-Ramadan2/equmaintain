import 'package:equmaintain/first.dart';
import 'package:equmaintain/fourth.dart';

import 'data_model.dart';
import 'package:flutter/material.dart';
import 'first.dart';

class AddData extends StatefulWidget {
  final void Function(DataModel x) expensedata;
  const AddData({
    super.key,
    required this.expensedata,
  });

  @override
  State<AddData> createState() => Adddata();
}

class Adddata extends State<AddData> {
  TextEditingController title = TextEditingController();
  TextEditingController text = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey();
  @override
  void dispose() {
    title.dispose();
    text.dispose();
    super.dispose();
  }



  void _submitedExpensesdata() {
    widget.expensedata(DataModel(title: title.text, text: text.text));
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.teal[300],
        body: SingleChildScrollView(
            key: formKey,
            child: Column(
              children: [const SizedBox(
                height: 50,
              ),
                Row(children: [
                  const SizedBox(width: 0),
                  IconButton(
                    icon: const Icon(Icons.arrow_back),
                    color: Colors.white,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Fourthpage()));
                    },
                    // size: 25,
                  ),
                  const SizedBox(width: 300),
                  const Icon(
                    Icons.apps,
                    size: 30,
                    color: Colors.white,
                  ),
                ]),
                const SizedBox(
                  height: 20,
                ),
                Container(
                          height: 730,
                          width: 500,
                          decoration: const BoxDecoration(
                          borderRadius: BorderRadius.vertical(
                          top: Radius.circular(20), bottom: Radius.circular(20)),
                          color: Colors.white,
                          ),
                child: Column(
                    children: [
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
                              0.0,
                              4.0,
                            ),
                            blurRadius: 2.0,
                            spreadRadius: -5.0,
                          ),
                          BoxShadow(
                            color: Colors.teal,
                            offset: Offset(0.0, 0.0),
                            blurRadius: 4.0,
                            spreadRadius: -4.0,
                          ),
                          //BoxShadow
                        ]),
                    width: 400,
                    height: 50,
                    child:
                      TextField(
                        controller: title,
                        maxLines: 1,
                        decoration: const InputDecoration(
                          hintText: 'Enter your direction',
                          border: InputBorder.none,
                        ),
                        textAlign: TextAlign.center,),),

                const SizedBox(
                  width: 100,
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
                        0.0,
                        4.0,
                      ),
                      blurRadius: 2.0,
                      spreadRadius: -5.0,
                    ),
                    BoxShadow(
                      color: Colors.teal,
                      offset: Offset(0.0, 0.0),
                      blurRadius: 4.0,
                      spreadRadius: -4.0,
                    ),
                    //BoxShadow
                  ]),
              width: 400,
              height: 50,
              child:
                  TextField(
                  controller: text,
                  decoration:
                  const InputDecoration(hintText: 'Enter your degree',
                    border: InputBorder.none),
                  maxLines: 5,
                  textAlign: TextAlign.center,

                  ),),

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
                                  _submitedExpensesdata();
                                },
                                child: const Text('Add',
                                    style: TextStyle(fontSize: 20))),
                          ),
                        ])),
              ],
            )
    )
    ] ) ) ) ;
  }
}