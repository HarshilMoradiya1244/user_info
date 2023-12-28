import 'package:flutter/material.dart';
import 'package:user_info/screen/country/view/country_screen.dart';
import 'package:user_info/screen/home/view/home_screen.dart';
import 'package:user_info/screen/user/view/user_screen.dart';
import 'package:user_info/screen/user_info/view/userinfo_screen.dart';

Map<String, WidgetBuilder> screen_routes = {
  '/': (context) => const HomeScreen(),
  'user': (context) => const UserSacreen(),
  'country': (context) => const CountryScreen(),
  'info': (context) => const UserInfoscreen(),
};