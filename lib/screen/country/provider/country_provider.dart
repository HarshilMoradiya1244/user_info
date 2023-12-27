import 'package:flutter/material.dart';
import 'package:user_info/screen/country/model/country_model.dart';
import '../../../utils/json_helper.dart';

class CountryProvider with ChangeNotifier{
  List<CountryModel> country = [];

  Future<void> getData() async {
    JsonHelper jsonHelper = JsonHelper();
    List<CountryModel> l1 = await jsonHelper.CountryToList();
    country = l1;
    notifyListeners();
  }
}