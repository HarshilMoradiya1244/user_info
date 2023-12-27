import 'package:flutter/cupertino.dart';
import 'package:user_info/screen/user/model/user_model.dart';

import '../../../utils/json_helper.dart';

class UserProvider with ChangeNotifier{
  List<UserModel> user = [];

  Future<void> getData() async {
    JsonHelper jsonHelper = JsonHelper();
    List<UserModel> l1 = await jsonHelper.UserToList();
    user = l1;
    notifyListeners();
  }
}