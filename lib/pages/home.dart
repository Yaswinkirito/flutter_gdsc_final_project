// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:group_drop/pages/book.dart';
import 'package:group_drop/pages/contacts.dart';
import 'package:group_drop/pages/profile.dart';

import 'package:sizer/sizer.dart';

import 'chat.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(child: const NavBar()),
    );
  }
}

class NavBar extends StatefulWidget {
  const NavBar({
    super.key,
  });

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int currentPageIndex = 0;
  String a = "Home";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Column(children: [
            const SizedBox(height: 20.0),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              SizedBox(
                width: 20.w,
              ),
              Text(
                a,
                style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0),
              ),
              SizedBox(
                width: 20.w,
              ),
              const Icon(
                Icons.search,
                color: Colors.black,
                size: 29.0,
              ),
              SizedBox(
                width: 2.w,
              ),
              const Icon(
                Icons.more_vert,
                color: Colors.black,
                size: 29.0,
              )
            ]),
          ]),
          elevation: 0,
        ),
        extendBody: true,
        bottomNavigationBar: NavigationBar(
          backgroundColor: Colors.transparent,
          onDestinationSelected: (int index) {
            setState(() {
              currentPageIndex = index;
              if (index == 1) {
                a = "Chat";
              } else if (index == 2) {
                a = "Contact";
              } else if (index == 3) {
                a = "Profile";
              } else {
                a = "Home";
              }
            });
          },
          selectedIndex: currentPageIndex,
          destinations: const <Widget>[
            NavigationDestination(
              icon: Icon(
                Icons.home_outlined,
                color: Color.fromRGBO(0, 0, 0, 0.35),
                size: 30.0,
              ),
              selectedIcon: Icon(
                Icons.home_outlined,
                color: Color.fromRGBO(28, 66, 198, 1.0),
                size: 32.0,
              ),
              label: 'Home',
            ),
            NavigationDestination(
              icon: Icon(
                Icons.chat_bubble_outline,
                color: Color.fromRGBO(0, 0, 0, 0.35),
                size: 30.0,
              ),
              selectedIcon: Icon(
                Icons.chat_bubble_outline,
                color: Color.fromRGBO(28, 66, 198, 1.0),
                size: 32.0,
              ),
              label: 'Message',
            ),
            NavigationDestination(
              icon: Icon(
                Icons.phone_outlined,
                size: 30.0,
                color: Color.fromRGBO(0, 0, 0, 0.35),
              ),
              selectedIcon: Icon(
                Icons.phone_outlined,
                color: Color.fromRGBO(28, 66, 198, 1.0),
                size: 32.0,
              ),
              label: 'Phone',
            ),
            NavigationDestination(
              icon: Icon(
                Icons.person_outline,
                size: 30.0,
                color: Color.fromRGBO(0, 0, 0, 0.35),
              ),
              selectedIcon: Icon(
                Icons.person_outline,
                color: Color.fromRGBO(28, 66, 198, 1.0),
                size: 32.0,
              ),
              label: 'Profile',
            ),
          ],
        ),
        body: <Widget>[
          const book(),
          Container(
            alignment: Alignment.center,
            child: const Chat(),
          ),
          Container(
            alignment: Alignment.center,
            child: const Center(child: Contact()),
          ),
          Container(
            alignment: Alignment.center,
            child: const Profile(),
          ),
        ][currentPageIndex]);
  }
}
