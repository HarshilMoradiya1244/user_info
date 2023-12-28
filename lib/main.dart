
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:user_info/screen/country/provider/country_provider.dart';
import 'package:user_info/screen/user/provider/user_provider.dart';
import 'package:user_info/screen/user_info/provider/userinfo_provider.dart';
import 'package:user_info/utils/app_routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp],
  );
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => UserProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => CountryProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => UserInfoProvider(),
        ),

      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(useMaterial3: true),
        routes: screen_routes,
      ),
    ),
  );
}