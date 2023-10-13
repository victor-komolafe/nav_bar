// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projectone/app_drawer_tile.dart';
// import 'package:projectone/main.dart';
// import 'package:projectone/my_flutter_app_icons.dart';
import 'package:projectone/defaults.dart';
// import 'package:projectone/pages/home_page.dart';
import 'package:flutter/services.dart';

Drawer navBar(VoidCallback updateState) => Drawer(
    shadowColor: null,
    backgroundColor: Defaults.navBarItemColor,
    elevation: null,
    child: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          // SizedBox(
          //   height: 160.0,
          // ),

          SizedBox(
            height: 160,
            child: DrawerHeader(
                padding: EdgeInsets.all(0),
                margin: EdgeInsets.all(0), // padding: EdgeInsets.all(0),,
                // decoration: BoxDecoration(
                //   image: const DecorationImage(
                //     image: AssetImage('assets/avatar.jpg'),
                //     fit: BoxFit.fill,
                //   ),
                //   color: Colors.blue,
                //   // color: Color.fromRGBO(42, 45, 55, 1.0),
                // ),
                child: Container(
                    padding: EdgeInsets.all(0),
                    margin: EdgeInsets.all(0),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(height: 10),
                        Row(
                          //Wrap(),
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              padding: EdgeInsets.zero,
                              margin: EdgeInsets.fromLTRB(35, 0, 11.8, 0),
                              child: Icon(Icons.business_center,
                                  size: 40,
                                  color: const Color.fromRGBO(127, 87, 241, 1)),
                            ),
                            Text('Business Hub',
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 20,
                                  letterSpacing: 0.1,
                                )),
                          ],
                        ),
                        const SizedBox(height: 40),
                        Row(
                          //Wrap(),
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,

                          children: [
                            Container(
                              padding: EdgeInsets.zero,
                              margin: EdgeInsets.fromLTRB(30, 0, 8, 0),
                              child: CircleAvatar(
                                backgroundImage:
                                    AssetImage('assets/vicpic.jpg'),
                                radius: 14,
                              ),
                            ),
                            Text('Victor Komolafe',
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white,
                                  fontSize: 16,
                                  letterSpacing: 0.1,
                                )),
                            Expanded(
                              child: Container(
                                  // padding: EdgeInsets.all(0),
                                  margin: EdgeInsets.only(left: 40.0),
                                  child: Icon(Icons.arrow_forward,
                                      color: Colors.white)),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Divider(
                          // height: 24.33,
                          height: 0.0,
                          color: Colors.white,
                          thickness: 0.7,
                        ),
                      ],
                    ))),
          ),
          // Expanded(
          //   flex: 1,
          //   child: Column(
          //     crossAxisAlignment: CrossAxisAlignment.start,
          //     children: <Widget>[
          // ListTile(
          //     contentPadding: EdgeInsets.fromLTRB(23, 0, 20, 0),
          //     minVerticalPadding: 0,
          //     mouseCursor: SystemMouseCursors.text,
          // title:
          Padding(
            padding: const EdgeInsets.fromLTRB(6, 0, 6, 6),
            child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.grey[400],
                    size: 30,
                  ),
                  labelText: 'Search',
                  contentPadding: EdgeInsets.all(4),
                  border: OutlineInputBorder(
                      // borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(8.0)),
                ),
                style: TextStyle(fontSize: 14)),
          ),

          // ),
          // shape: ShapeBorder,
          // SizedBox(
          //   height: 5,
          // ),

          SizedBox(
            height: 500,
            width: double.infinity,
            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: drawerItems.length,
              itemBuilder: (context, index) {
                return ListTile(
                  // contentPadding: null,
                  // minVerticalPadding: 0.0,
                  // minLeadingWidth: 10,
                  onTap: () {
                    for (var element in drawerItems) {
                      element.isSelected = false;
                    }
                    drawerItems[index].isSelected = true;
                    updateState();
                    Navigator.pushNamed(context, drawerItems[index].route);
                  },
                  tileColor: drawerItems[index].isSelected
                      ? Defaults.navItemSelectedColor
                      : Defaults.navBarItemColor,
                  leading: Icon(drawerItems[index].icon),
                  title: (drawerItems[index].title),
                );
              },
            ),
          ),

          //     ],
          //   ),
          // ),
        ],
      ),
    ));
