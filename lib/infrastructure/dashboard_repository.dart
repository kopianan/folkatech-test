import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:folkatech/domain/i_dashboard.dart';
import 'package:folkatech/domain/product_data_model.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IDashboard)
class DashboardRepository extends IDashboard {
  DashboardRepository(this.dio);
  final Dio dio;


  //Repository to make rest api calling. 
  @override
  Future<Either<String, List<ProductDataModel>>> getProductList() async {
    Response response;
    try {
      response = await dio
          .get("https://mocki.io/v1/52c41978-6e31-4ea3-b917-01899e3ed373");
      //List of dynamic
      List _rawList = response.data;
      //converting to class
      var _result = _rawList.map((e) => ProductDataModel.fromJson(e)).toList();
      //return product list if success
      return right(_result);
    } catch (e) {
      //return error message if something error.
      
      return left(e.toString()); 
    }
  }
}
