import 'package:ecommerceapp/view/screens/auth/signup.dart';

import '../../../../core/class/crud.dart';
import '../../../../linkapi.dart';

class HomeData {
  Crud crud;
  HomeData(this.crud);

  postdata() async {
    var response = await crud.postdata(Applink.home, {});

    // print(response);
    return response.fold((l) => l, (r) => r);
  }
}
