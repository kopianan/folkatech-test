import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';


@module
abstract class DioInjectModule {
  Dio get getDio => Dio();
}
