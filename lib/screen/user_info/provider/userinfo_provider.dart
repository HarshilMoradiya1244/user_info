import 'package:flutter/material.dart';

import '../../../utils/json_helper.dart';
import '../model/userinfomodel.dart';

class UserInfoProvider with ChangeNotifier{

  UserInfoModel? useresModel =UserInfoModel();

  Future<void> useresgetData()
  async {
    JsonHelper jsonHelper=JsonHelper();
    UserInfoModel user = await jsonHelper.UserToModel();
    useresModel=user;
    notifyListeners();
  }
}