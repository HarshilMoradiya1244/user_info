import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../utils/color.dart';
import '../provider/user_provider.dart';

class UserSacreen extends StatefulWidget {
  const UserSacreen({super.key});

  @override
  State<UserSacreen> createState() => _UserSacreenState();
}

class _UserSacreenState extends State<UserSacreen> {
  @override
  UserProvider? providerr;
  UserProvider? providerw;

  @override
  void initState() {
    super.initState();
    context.read<UserProvider>().getData();
  }

  @override
  Widget build(BuildContext context) {
    providerr = context.read<UserProvider>();
    providerw = context.watch<UserProvider>();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: black,
          automaticallyImplyLeading: false,
          title: Text(
            'User',
            style:TextStyle(
                fontSize: 25, fontWeight: FontWeight.bold, color: white),
          ),
        ),
        body: ListView.builder(
          itemCount: providerw!.user.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Text(
                '${providerw!.user[index].id}.',
                style: TextStyle(color: black, fontSize: 15),
              ),
              title: Text(
                '${providerw!.user[index].userName}',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: black, fontSize: 20),
              ),
              subtitle: Text(
                '${providerw!.user[index].addressmodel!.city}',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: black, fontSize: 20),
              ),
            );
          },
        ),
      ),
    );
  }
}
