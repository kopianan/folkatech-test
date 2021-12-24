import 'package:dartz/dartz.dart';
import 'package:folkatech/domain/product_data_model.dart';

abstract class IDashboard {
  //this interface will return the future and Either. 
  //Either have feature to return multiple values. so i use either. 
  //if the value is error then it will return string or left
  //if the value is succes then it will return List of Product or right
  Future<Either<String, List<ProductDataModel>>> getProductList();
}
