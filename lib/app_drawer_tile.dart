import 'package:flutter/material.dart';
// import 'package:projectone/nav_bar.dart';
import 'package:projectone/defaults.dart';
import 'package:projectone/my_flutter_app_icons.dart';

class AppDrawerTile {
  AppDrawerTile({
    required this.title,
    required this.isSelected,
    required this.icon,
    required this.route,
  });

  final Text title;
  bool isSelected;
  final IconData icon;
  final String route;
}

List<AppDrawerTile> drawerItems = [
  AppDrawerTile(
    title: Text(
      'Main',
      style: Defaults.fontPops,
    ),
    isSelected: true,
    icon: Icons.home,
    route: Defaults.homeRoute,
  ),
  AppDrawerTile(
    title: Text(
      'Dashboard',
      style: Defaults.fontPops,
    ),
    isSelected: false,
    icon: MyFlutterApp.grid,
    route: Defaults.dashboard,
  ),
  AppDrawerTile(
    title: Text(
      'Products',
      style: Defaults.fontPops,
    ),
    isSelected: false,
    icon: MyFlutterApp.package,
    route: Defaults.products,
  ),
  AppDrawerTile(
    title: Text(
      'Clients',
      style: Defaults.fontPops,
    ),
    isSelected: false,
    icon: MyFlutterApp.users,
    route: Defaults.clients,
  ),
  AppDrawerTile(
    title: Text(
      'Messages',
      style: Defaults.fontPops,
    ),
    isSelected: false,
    icon: MyFlutterApp.message_square,
    route: Defaults.messages,
  ),
  AppDrawerTile(
    title: Text(
      'Database',
      style: Defaults.fontPops,
    ),
    isSelected: false,
    icon: MyFlutterApp.package,
    route: Defaults.database,
  ),
  AppDrawerTile(
    title: Text(
      'Notification',
      style: Defaults.fontPops,
    ),
    isSelected: false,
    icon: MyFlutterApp.bell,
    route: Defaults.notifications,
  ),
  AppDrawerTile(
    title: Text(
      'Settings',
      style: Defaults.fontPops,
    ),
    isSelected: false,
    icon: MyFlutterApp.settings,
    route: Defaults.settings,
  ),
  AppDrawerTile(
    title: Text(
      'Help',
      style: Defaults.fontPops,
    ),
    isSelected: false,
    icon: Icons.help_center,
    route: Defaults.help,
  ),
];
