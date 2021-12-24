import 'package:flutter/material.dart';
import 'package:folkatech/injecatble.dart'; 
import 'package:folkatech/presentation/dashboard_page.dart';
import 'package:folkatech/presentation/product_detail_page.dart';
import 'package:folkatech/presentation/splash_screen_page.dart';
import 'package:get/get.dart';

import 'application/dashboard/dashboard_binding.dart';

void main() {
  configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      //Routing using GET dependecies.
      getPages: [
        GetPage(
            name: DashboardPage.routeName,
            page: () => DashboardPage(),
            binding: DashboardBinding()),
        GetPage(
            name: SplashScreenPage.routeName,
            page: () => const SplashScreenPage()),
        GetPage(
            name: ProductDetailPage.routeName,
            page: () => const ProductDetailPage()),
      ],
      
      initialRoute: SplashScreenPage.routeName,
      theme: ThemeData(
        appBarTheme: AppBarTheme(backgroundColor: Colors.red),
        primarySwatch: Colors.blue,
      ),
    );
  }
}
