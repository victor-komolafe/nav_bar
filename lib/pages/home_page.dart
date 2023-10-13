import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projectone/nav_bar.dart';
// import 'package:projectone/defaults.dart';
// import 'package:projectone/pages/home_page.dart';
import 'package:flutter/services.dart';

class homePage extends StatelessWidget {
  const homePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
      },
      child: Scaffold(
        backgroundColor: const Color.fromRGBO(42, 45, 55, 60),
        appBar: AppBar(
          title: Text('Staff User ID',
              style: GoogleFonts.poppins(
                color: Colors.white,
              )),
          centerTitle: true,
          backgroundColor: const Color.fromRGBO(42, 45, 55, 60),
          elevation: 0.0,
        ),
        drawer: navBar(() {}),
        // backgroundColor: const Color.fromRGBO(42, 45, 55, 60),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Center(
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/avatar.jpg'),
                    radius: 40.0,
                  ),
                ),
                Divider(
                    height: 60.0,
                    color: Colors.grey[
                        800]), //creates a line to divide avatar from content where the space around the line(inclusive) is 60.0

                Text(
                  'Staff Name',
                  style: TextStyle(
                    color: Colors.grey,
                    letterSpacing: 2.0,
                  ),
                ),
                SizedBox(
                    height:
                        10.0), //used to create spacing after a widget (between widgets)
                Text('Mr Jon',
                    style: TextStyle(
                      color: Colors.amberAccent[200],
                      letterSpacing: 2.0,
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold,
                    )),
                SizedBox(height: 30.0),
                Text(
                  'CURRENT RANK',
                  style: TextStyle(
                    color: Colors.grey,
                    letterSpacing: 2.0,
                  ),
                ),
                SizedBox(
                    height:
                        10.0), //used to create spacing after a widget (between widgets)
                Text(
                    //'$ninjaLevel', //stores variable value
                    '7',
                    style: TextStyle(
                      color: Colors.amberAccent[200],
                      letterSpacing: 2.0,
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    )),
                SizedBox(height: 30.0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
