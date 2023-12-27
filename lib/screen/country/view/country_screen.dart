import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../utils/color.dart';
import '../provider/country_provider.dart';

class CountryScreen extends StatefulWidget {
  const CountryScreen({super.key});

  @override
  State<CountryScreen> createState() => _CountryScreenState();
}

class _CountryScreenState extends State<CountryScreen> {
  @override
  CountryProvider? providerr;
  CountryProvider? providerw;

  @override
  void initState() {
    super.initState();
    context.read<CountryProvider>().getData();
  }

  @override
  Widget build(BuildContext context) {
    providerr = context.read<CountryProvider>();
    providerw = context.watch<CountryProvider>();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: black,
          automaticallyImplyLeading: false,
          title: Text(
            'Country',
            style:TextStyle(
                fontSize: 25, fontWeight: FontWeight.bold, color: white),
          ),
        ),
        body: ListView.builder(
          itemCount: providerw!.country.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Text(
                '${providerw!.country[index].common}.',
                style: TextStyle(color: black, fontSize: 15),
              ),
              title: Text(
                '${providerw!.country[index].nativeNameModel!.engModel!.official}',
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
