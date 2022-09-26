import 'dart:math';

import 'package:awesome_card/credit_card.dart';
import 'package:awesome_card/extra/card_type.dart';
import 'package:awesome_card/style/card_background.dart';
import 'package:flutter/material.dart';

import '../constants/constantcolors.dart';
import 'PanelWidget.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  double x0ffset = 0;
  double y0ffset = 0;
  bool isDrawerOpen = false;

  String cardNumber = '';
  String cardHolderName = '';
  String expiryDate = '';
  String cvv = '';

  @override
  Widget build(BuildContext context) {
    CC cc = new CC();

    Size size = MediaQuery.of(context).size;

    return AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        transform: Matrix4.translationValues(x0ffset, y0ffset, 0)
          ..scale(isDrawerOpen ? 0.90 : 1.00)
          ..rotateZ(isDrawerOpen ? pi / 55 : 0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: isDrawerOpen
              ? BorderRadius.circular(40)
              : BorderRadius.circular(0),
        ),
        child: SafeArea(
            child: Scaffold(
                body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                // decoration: const BoxDecoration(
                //   gradient: LinearGradient(
                //     begin: Alignment.topRight,
                //     end: Alignment.bottomLeft,
                //     colors: [
                //       Color(0xFFD03A6F),
                //       Color(0xFF963697),
                //       Color(0xFF5181A7),
                //     ],
                //   ),
                // ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      child: Icon(Icons.menu_outlined),
                      onTap: () {
                        if (isDrawerOpen) {
                          setState(() {
                            x0ffset = 0;
                            y0ffset = 0;
                            isDrawerOpen = false;
                          });
                        } else {
                          setState(() {
                            x0ffset = size.width - 120;
                            y0ffset = size.height / 5;
                            isDrawerOpen = true;
                          });
                        }
                      },
                    ),
                    Text('',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            decoration: TextDecoration.none)),
                    Container()
                  ],
                ),
              ),
              SizedBox(
                height: 44,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 16,
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Payments",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            width: 200,
                          ),
                          InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => PanelWidget()));
                                // showModalBottomSheet(
                                //     context: context,
                                //     builder: (BuildContext context) {
                                //       return Container(
                                //         height: 1400,
                                //         color: Colors.white,
                                //         child: Center(
                                //           child: Column(
                                //             children: [
                                //               Row(
                                //                 children: [
                                //                   Container(
                                //                     child: Row(
                                //                       children: [
                                //                         Text(
                                //                           "",
                                //                           style: TextStyle(
                                //                             color: Colors.black,
                                //                             fontSize: 20,
                                //                             fontWeight:
                                //                                 FontWeight.bold,
                                //                           ),
                                //                         ),
                                //                         SizedBox(
                                //                           width: 300,
                                //                         ),
                                //                         Icon(Icons
                                //                             .cancel_outlined)
                                //                       ],
                                //                     ),
                                //                   ),
                                //                 ],
                                //               ),
                                //               Row(
                                //                 children: [
                                //                   Container(
                                //                     child: Row(
                                //                       children: [
                                //                         CircleAvatar(
                                //                           child: Image.asset(
                                //                               "assets/img.png"),
                                //                           radius: 50,
                                //                         ),
                                //                         SizedBox(
                                //                           width: 60,
                                //                         ),
                                //                         Column(
                                //                           children: [
                                //                             Text(
                                //                               'David Freg',
                                //                               style: TextStyle(
                                //                                   fontSize: 30),
                                //                             ),
                                //                             Text(
                                //                               '4.1',
                                //                               style: TextStyle(
                                //                                   fontSize: 30),
                                //                             ),
                                //                           ],
                                //                         )
                                //                       ],
                                //                     ),
                                //                   ),
                                //                 ],
                                //               ),
                                //               Row(
                                //                 children: [
                                //                   Container(
                                //                     child: Row(
                                //                       children: [
                                //                         Text(
                                //                           'Plate Number',
                                //                           style: TextStyle(
                                //                               fontSize: 20),
                                //                         ),
                                //                         SizedBox(
                                //                           width: 20,
                                //                         ),
                                //                         Text(
                                //                           'Model',
                                //                           style: TextStyle(
                                //                               fontSize: 20),
                                //                         ),
                                //                         Text(
                                //                           'Color',
                                //                           style: TextStyle(
                                //                               fontSize: 20),
                                //                         )
                                //                       ],
                                //                     ),
                                //                   ),
                                //                 ],
                                //               ),
                                //             ],
                                //           ),
                                //         ),
                                //       );
                                //     });
                              },
                              child: Icon(Icons.add))
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CreditCard(
                        cardNumber: "5450 7879 4864 7854",
                        cardExpiry: "10/25",
                        cardHolderName: "Karina",
                        cvv: "456",
                        bankName: "Axis Bank",
                        cardType: CardType
                            .masterCard, // Optional if you want to override Card Type
                        showBackSide: false,
                        frontBackground: CardBackgrounds.black,
                        backBackground: CardBackgrounds.white,
                        showShadow: true,
                        textExpDate: 'Exp. Date',
                        textName: '',
                        textExpiry: 'MM/YY'),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Text(
                            "From",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            width: 150,
                          ),
                          Text(
                            "To",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Text(
                            "Washington Ave,\n Manchester",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            width: 40,
                          ),
                          Text(
                            "Dr.Richardson \n California \n 62639",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text(
                            "Discount",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            width: 120,
                          ),
                          Text(
                            "Total",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text(
                            "33 23F NVK",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            width: 100,
                          ),
                          Text(
                            "12",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
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
                      child: const Text('Pay Now'),
                      onPressed: () {
                        // Navigator.of(context).push(
                        //     MaterialPageRoute(builder: (context) => HomeMain()));
                      },
                    )),
              ),
            ],
          ),
        ))));
  }
}
