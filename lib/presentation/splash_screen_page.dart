import 'package:flutter/material.dart';
import 'package:folkatech/domain/product_data_model.dart';
import 'package:folkatech/presentation/dashboard_page.dart';
import 'package:get/get.dart';

class SplashScreenPage extends StatefulWidget {
  static const String routeName = '/splash-screen';
  const SplashScreenPage({Key? key}) : super(key: key);

  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    super.initState();
    // wait for 4 second then open new page
    Future.delayed(Duration(seconds: 4))
        .then((value) => Get.offNamed(DashboardPage.routeName));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            FlutterLogo(
              size: Get.size.width / 2,
            ),
            
            CircularProgressIndicator()
          ],
        ),
      ),
    );
  }
}
