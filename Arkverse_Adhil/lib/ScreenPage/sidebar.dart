import 'package:flutter/material.dart';

import 'Pages/AboutApp.dart';
import 'Pages/Favorite.dart';
import 'Pages/SearchPage.dart';
import 'Pages/dummyPage.dart';
import 'new_row.dart';

class SideBar extends StatefulWidget {
  const SideBar({Key? key}) : super(key: key);

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.only(top: 50, left: 40, bottom: 70),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                    child: Image.asset("assets/icon.jpeg"),
                    backgroundColor: Colors.white,
                    radius: 40,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Karina",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Dnipro",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => dummyPage()));
                  },
                  child: NewRow(
                    text: 'Home',
                    icon: Icons.home,
                    sizeFont: 22,
                    onTap: () {
                      // Navigator.push(context,
                      //     MaterialPageRoute(builder: (context) => dummyPage()));
                    },
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SearchPage()));
                  },
                  child: NewRow(
                    text: 'Wallet',
                    icon: Icons.wallet_sharp,
                    sizeFont: 22,
                    onTap: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => SearchPage()));
                    },
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Favorite()));
                  },
                  child: NewRow(
                    text: 'Ride History',
                    icon: Icons.history,
                    sizeFont: 22,
                    onTap: () {
                      // Navigator.push(context,
                      //     MaterialPageRoute(builder: (context) => Favorite()));
                    },
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => AboutApp()));
                  },
                  child: NewRow(
                    text: 'online support',
                    icon: Icons.mic,
                    sizeFont: 20,
                    onTap: () {
                      // Navigator.push(context,
                      //     MaterialPageRoute(builder: (context) => AboutApp()));
                    },
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => AboutApp()));
                  },
                  child: NewRow(
                    text: 'Promotions',
                    icon: Icons.card_giftcard_outlined,
                    sizeFont: 22,
                    onTap: () {
                      // Navigator.push(context,
                      //     MaterialPageRoute(builder: (context) => AboutApp()));
                    },
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => AboutApp()));
                  },
                  child: NewRow(
                    text: 'Settings',
                    icon: Icons.settings,
                    sizeFont: 22,
                    onTap: () {
                      // Navigator.push(context,
                      //     MaterialPageRoute(builder: (context) => AboutApp()));
                    },
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.cancel,
                  color: Colors.white.withOpacity(0.5),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Log Out',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
