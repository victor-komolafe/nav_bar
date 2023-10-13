import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:projectone/main.dart';
// import 'package:projectone/my_flutter_app_icons.dart';
import 'package:projectone/nav_bar.dart';
import 'package:projectone/pages/home_page.dart';

class Defaults {
  static var navItemClicked = 0;
  static final Color navBarItemColor = const Color.fromRGBO(42, 45, 55, 1.0);
  static final Color navItemColor = Colors.grey;
  static final Color navItemSelectedColor = Color.fromARGB(156, 137, 99, 243);
  static final fontPops = GoogleFonts.poppins(
    fontWeight: FontWeight.w400,
    color: Colors.grey,
    fontSize: 16,

    // fontSize: 18, fontWeight: FontWeight.w400, color: Colors.white
  );

  // static SetNavItemClicked(int a) {
  //   navItemClicked = a;
  // }

  static final List<Widget> pages = [
    const homePage(),
    Scaffold(
      backgroundColor: const Color.fromRGBO(42, 45, 55, 60),
      drawer: navBar(() {}),
      appBar: AppBar(
        title: Text(Defaults.dashboard,
            style: GoogleFonts.poppins(
              color: Colors.white,
            )),
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(42, 45, 55, 60),
        elevation: 0.0,
      ),
      body: Center(
        child: Text(
          'Dashboard',
          style: Defaults.fontPops,
        ),
      ),
    ),
    Scaffold(
      backgroundColor: const Color.fromRGBO(42, 45, 55, 60),
      drawer: navBar(() {}),
      appBar: AppBar(
        title: Text(Defaults.products,
            style: GoogleFonts.poppins(
              color: Colors.white,
            )),
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(42, 45, 55, 60),
        elevation: 0.0,
      ),
      body: Center(
        child: Text(
          'Products',
          style: Defaults.fontPops,
        ),
      ),
    ),
    Scaffold(
      backgroundColor: const Color.fromRGBO(42, 45, 55, 60),
      drawer: navBar(() {}),
      appBar: AppBar(
        title: Text(Defaults.clients,
            style: GoogleFonts.poppins(
              color: Colors.white,
            )),
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(42, 45, 55, 60),
        elevation: 0.0,
      ),
      body: Center(
        child: Text(
          'Clients',
          style: Defaults.fontPops,
        ),
      ),
    ),
    Scaffold(
      backgroundColor: const Color.fromRGBO(42, 45, 55, 60),
      drawer: navBar(() {}),
      appBar: AppBar(
        title: Text(Defaults.messages,
            style: GoogleFonts.poppins(
              color: Colors.white,
            )),
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(42, 45, 55, 60),
        elevation: 0.0,
      ),
      body: Center(
        child: Text(
          'Messages',
          style: Defaults.fontPops,
        ),
      ),
    ),
    Scaffold(
      backgroundColor: const Color.fromRGBO(42, 45, 55, 60),
      drawer: navBar(() {}),
      appBar: AppBar(
        title: Text(Defaults.database,
            style: GoogleFonts.poppins(
              color: Colors.white,
            )),
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(42, 45, 55, 60),
        elevation: 0.0,
      ),
      body: Center(
        child: Text(
          'DataBase',
          style: Defaults.fontPops,
        ),
      ),
    ),
    Scaffold(
      backgroundColor: const Color.fromRGBO(42, 45, 55, 60),
      drawer: navBar(() {}),
      appBar: AppBar(
        title: Text(Defaults.notifications,
            style: GoogleFonts.poppins(
              color: Colors.white,
            )),
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(42, 45, 55, 60),
        elevation: 0.0,
      ),
      body: Center(
        child: Text(
          'Notifications',
          style: Defaults.fontPops,
        ),
      ),
    ),
    Scaffold(
      backgroundColor: const Color.fromRGBO(42, 45, 55, 60),
      drawer: navBar(() {}),
      appBar: AppBar(
        title: Text(Defaults.settings,
            style: GoogleFonts.poppins(
              color: Colors.white,
            )),
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(42, 45, 55, 60),
        elevation: 0.0,
      ),
      body: Center(
        child: Text(
          'Settings',
          style: Defaults.fontPops,
        ),
      ),
    ),
    Scaffold(
      backgroundColor: const Color.fromRGBO(42, 45, 55, 60),
      drawer: navBar(() {}),
      appBar: AppBar(
        title: Text(Defaults.help,
            style: GoogleFonts.poppins(
              color: Colors.white,
            )),
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(42, 45, 55, 60),
        elevation: 0.0,
      ),
      body: Center(
        child: Text(
          'Help',
          style: Defaults.fontPops,
        ),
      ),
    ),
  ];

  static final DashboardPage = pages.elementAt(1);
  static final Widget ProductPage = pages.elementAt(2);
  static final ClientsPage = pages.elementAt(3);
  static final MessagesPage = pages.elementAt(4);
  static final DatabasePage = pages.elementAt(5);
  static final NotificationsPage = pages.elementAt(6);
  static final SettingsPage = pages.elementAt(7);
  static final HelpPage = pages.elementAt(8);

  static final Map<String, Widget Function(BuildContext)> routes = {
    homeRoute: (BuildContext context) => const homePage(),
    dashboard: (context) => DashboardPage,
    products: (context) => ProductPage,
    clients: (context) => ClientsPage,
    messages: (context) => MessagesPage,
    database: (context) => DatabasePage,
    notifications: (context) => NotificationsPage,
    settings: (context) => SettingsPage,
    help: (context) => HelpPage,
  };
  static String homeRoute = '/';
  static String dashboard = 'DashBoard';
  static String products = 'Products';
  static String clients = 'Clients';
  static String messages = 'Messages';
  static String database = 'DataBase';
  static String notifications = 'Notifications';
  static String settings = 'Settings';
  static String help = 'Help';
}
