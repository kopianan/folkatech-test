import 'package:folkatech/domain/product_data_model.dart';
import 'package:get/get.dart';

//this class is GetxController / statemanagement.
//it is same like provider. 

class DashboardController extends GetxController {
  final productList = <ProductDataModel>[].obs;

  void setProductList(List<ProductDataModel> list) {
    productList.assignAll(list);
  }

  List<ProductDataModel> get getProductList => this.productList;
}
