import 'package:dio/dio.dart';

import '../models/food_app_model.dart';
import '../models/vouchers_modes.dart';

class FoodAppServices {
  static Future getData() async {
    final dio = Dio();
    final res = await dio.get('https://tes-mobile.landa.id/api/menus');
    // print(res.data);
    if (res.statusCode == 200) {
      return ListDataMenuModel.fromJson(res.data);
    }
  }

  static Future getVouchers({String? kode}) async {
    final dio = Dio();
    final res = await dio
        .get('https://tes-mobile.landa.id/api/vouchers', queryParameters: {
      "kode": "puas",
    });
    print(res.data);
    if (res.statusCode == 200) {
      return VouchersModel.fromJson(res.data);
    }
  }
}
