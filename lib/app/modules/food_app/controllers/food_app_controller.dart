import 'package:get/get.dart';
import 'package:my_documentation/app/modules/food_app/models/food_app_model.dart';
import 'package:my_documentation/app/modules/food_app/models/vouchers_modes.dart';
import 'package:my_documentation/app/modules/food_app/services/food_app_service.dart';

class FoodAppController extends GetxController {
  //TODO: Implement FoodAppController

  var data = ListDataMenuModel().obs;
  var dataVoucher = DatasVouchers().obs;
  var isLoading = false.obs;
  @override
  void onInit() {
    getData();
    getVouchers('puas');
    super.onInit();
  }

  Future getData() async {
    try {
      isLoading(true);
      await FoodAppServices.getData().then((value) {
        if (value is ListDataMenuModel) {
          isLoading(false);
          data.value = value;
          print(data.value.datas!.first.gambar);
        }
      });
    } catch (e) {
      isLoading(false);
      print(e);
    }
  }

  Future getVouchers(String? kode) async {
    try {
      isLoading(true);
      await FoodAppServices.getVouchers(kode: kode).then((value) {
        if (value is DatasVouchers) {
          isLoading(false);
          dataVoucher.value = value;
        }
      });
    } catch (e) {
      isLoading(false);
      print(e);
    }
  }
}
