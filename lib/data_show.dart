import 'data_model.dart';
import 'package:flutter/material.dart';

class DataShow extends StatefulWidget {
  const DataShow({super.key, required this.data});
  final List<DataModel> data;

  @override
  State<DataShow> createState() => _DataShowState();
}

class _DataShowState extends State<DataShow> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
                        // physics: NeverScrollableScrollPhysics(),

                        scrollDirection: Axis.vertical,
                        itemCount: widget.data.length,
                        itemBuilder: (ctx, index) {
                          return Container(
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
                                    spreadRadius: -5.0,
                                  ),
                                  //BoxShadow
                                ]),
                            width: 330,
                            height: 50,

                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  width: 15,
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
                                    width: 30,
                                    height: 30,
                                    child: IconButton (onPressed: (){
                                      setState(() {
                                        widget.data.removeAt(index);
                                      });
                                    }, icon: const Icon(Icons.remove, size: 15))),
                                    const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  widget.data[index].text + ' degrees ' + widget.data[index].title,
                                  style: const TextStyle(
                                      color: Colors.white, fontSize: 17),
                                )
                              ],
                            ),
                          );
                        });
        }
  }
