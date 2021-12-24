import 'package:folkatech/application/dashboard/dashboard_controller.dart';
import 'package:get/get.dart';

//Controller binding. when the page is initialled, some controller will be binded with the page
class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DashboardController());
  }
}
