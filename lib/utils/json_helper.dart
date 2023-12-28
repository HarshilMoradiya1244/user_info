import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:user_info/screen/country/model/country_model.dart';
import 'package:user_info/screen/user/model/user_model.dart';

import '../screen/user_info/model/userinfomodel.dart';

class JsonHelper {
  Future<List<UserModel>> UserToList() async {
    var jsonString = await rootBundle.loadString('assets/json/user.json');
    List post = jsonDecode(jsonString);
    List<UserModel> modelList =
    post.map((e) => UserModel.mapToModel(e)).toList();
    return modelList;
  }


  Future<List<CountryNameModel>> CountryToList() async {
    var jsonString = await rootBundle.loadString('assets/json/country.json');
    List post = jsonDecode(jsonString);

    // post.map((e) => print(e['name'])).toList();

    List<CountryNameModel> modelList = post.map((e) => CountryNameModel.mapToModel(e['name'])).toList();
    return modelList;
  }

  Future<UserInfoModel> UserToModel()
  async {
    var useresString = await rootBundle.loadString("assets/json/userinfo.json");
    var useres = jsonDecode(useresString);
    UserInfoModel useresModel= UserInfoModel.mapToModel(useres);
    return UserInfoModel();
  }
}