import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class PanelWidget extends StatelessWidget {
  const PanelWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: true,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        title: Text(
          "",
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
      ),
      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              Image.asset('assets/maps.jpeg',
                  height: 600, width: 400, fit: BoxFit.cover),
              Padding(
                padding: const EdgeInsets.all(9.0),
                child: Container(
                    height: 50,
                    width: 250,
                    child: ElevatedButton(
                      style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      side: BorderSide(color: Colors.red)))),
                      child: const Text('Book Now'),
                      onPressed: () {
                        // Navigator.of(context).push(
                        //     MaterialPageRoute(builder: (context) => HomeMain()));
                        showModalBottomSheet(
                            context: context,
                            shape: const RoundedRectangleBorder(
                              // <-- SEE HERE
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(25.0),
                              ),
                            ),
                            builder: (BuildContext context) {
                              return Container(
                                height: 1400,
                                color: Colors.white,
                                child: Center(
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            child: Row(
                                              children: [
                                                Text(
                                                  "",
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 300,
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: InkWell(
                                                    onTap: () =>
                                                        Navigator.pop(context),
                                                    child: Icon(
                                                      Icons.cancel,
                                                      size: 40,
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            child: Row(
                                              children: [
                                                Image.asset(
                                                  'assets/img.png',
                                                  height: 100,
                                                ),
                                                SizedBox(
                                                  width: 50,
                                                ),
                                                Row(
                                                  children: [
                                                    Center(
                                                      child: Column(
                                                        children: [
                                                          Center(
                                                              child: Text(
                                                            'David Freg',
                                                            style: TextStyle(
                                                              fontSize: 20,
                                                            ),
                                                            textAlign: TextAlign
                                                                .center,
                                                          )),
                                                          SizedBox(
                                                            height: 15,
                                                          ),
                                                          Center(
                                                              child:
                                                                  Text('4.3 ⭐'))
                                                        ],
                                                      ),
                                                    )
                                                  ],
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(18.0),
                                            child: Container(
                                              child: Row(
                                                children: [
                                                  Text(
                                                    'Plate Number',
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        color: Colors.grey),
                                                  ),
                                                  SizedBox(
                                                    width: 30,
                                                  ),
                                                  Text(
                                                    'Model',
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        color: Colors.grey),
                                                  ),
                                                  SizedBox(
                                                    width: 20,
                                                  ),
                                                  Text(
                                                    'Color',
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        color: Colors.grey),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(18.0),
                                            child: Container(
                                              child: Row(
                                                children: [
                                                  Text(
                                                    'AE 0909 IC',
                                                    style:
                                                        TextStyle(fontSize: 20),
                                                  ),
                                                  SizedBox(
                                                    width: 40,
                                                  ),
                                                  Text(
                                                    'Daewoo \n Lanos',
                                                    style:
                                                        TextStyle(fontSize: 20),
                                                  ),
                                                  SizedBox(
                                                    width: 20,
                                                  ),
                                                  Text(
                                                    'Red',
                                                    style:
                                                        TextStyle(fontSize: 20),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(18.0),
                                            child: Container(
                                              child: Row(
                                                children: [
                                                  NeumorphicButton(
                                                    onPressed: () {
                                                      print("onClick");
                                                    },
                                                    style: NeumorphicStyle(
                                                      shape:
                                                          NeumorphicShape.flat,
                                                      boxShape:
                                                          NeumorphicBoxShape
                                                              .roundRect(
                                                                  BorderRadius
                                                                      .circular(
                                                                          8)),
                                                    ),
                                                    padding:
                                                        const EdgeInsets.all(
                                                            12.0),
                                                    child: Icon(
                                                      Icons.call,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 80,
                                                  ),
                                                  NeumorphicButton(
                                                    onPressed: () {
                                                      print("onClick");
                                                    },
                                                    style: NeumorphicStyle(
                                                      shape:
                                                          NeumorphicShape.flat,
                                                      boxShape:
                                                          NeumorphicBoxShape
                                                              .roundRect(
                                                                  BorderRadius
                                                                      .circular(
                                                                          8)),
                                                    ),
                                                    padding:
                                                        const EdgeInsets.all(
                                                            12.0),
                                                    child: Icon(
                                                      Icons.mail,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 65,
                                                  ),
                                                  NeumorphicButton(
                                                    onPressed: () {
                                                      print("onClick");
                                                    },
                                                    style: NeumorphicStyle(
                                                      shape:
                                                          NeumorphicShape.flat,
                                                      boxShape:
                                                          NeumorphicBoxShape
                                                              .roundRect(
                                                                  BorderRadius
                                                                      .circular(
                                                                          8)),
                                                    ),
                                                    padding:
                                                        const EdgeInsets.all(
                                                            12.0),
                                                    child: Icon(
                                                      Icons.cancel,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            });
                      },
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
