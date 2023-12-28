import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:user_info/screen/user_info/provider/userinfo_provider.dart';

class UserInfoscreen extends StatefulWidget {
  const UserInfoscreen({super.key});

  @override
  State<UserInfoscreen> createState() => _UserInfoscreenState();
}

class _UserInfoscreenState extends State<UserInfoscreen> {
  UserInfoProvider? providerr;
  UserInfoProvider? providerw;

  @override
  void initState() {
    super.initState();
    context.read<UserInfoProvider>().useresgetData();
  }

  @override
  Widget build(BuildContext context) {
    providerr = context.read<UserInfoProvider>();
    providerw = context.watch<UserInfoProvider>();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("User"),
          centerTitle: true,
        ),
        body: providerw!.useresModel == null
            ? const Center(child: CircularProgressIndicator())
            : ListView.builder(
          itemCount: providerw!.useresModel!.dataModelList!.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Text(
                  "${providerw!.useresModel!.dataModelList![index].id}"),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                      "${providerw!.useresModel!.dataModelList![index].email}"),
                  Text(
                      "${providerw!.useresModel!.dataModelList![index].first_name}"),
                  Text(
                      "${providerw!.useresModel!.dataModelList![index].last_name}"),
                ],
              ),
              subtitle: Image.network(
                "${providerw!.useresModel!.supportModel!.url}",
                height: 100,
                width: 100,
              ),
            );
          },
        ),
      ),
    );
  }
}