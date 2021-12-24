import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:folkatech/application/dashboard/dashboard_controller.dart';
import 'package:folkatech/application/dashboard/dashboard_cubit.dart';
import 'package:folkatech/domain/product_data_model.dart';
import 'package:folkatech/utils/formatter.dart';
import 'package:get/get.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import '../injecatble.dart';
import 'product_detail_page.dart';

class DashboardPage extends StatefulWidget {
  static const String routeName = '/example-expert';
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  final RefreshController _refreshController =
      RefreshController(initialRefresh: false);

  void _onRefresh() async {
    dashboardCubit.getProductList();
  }

  //Make cubit variable so it can address the specific bloc provider
  final dashboardCubit = getIt<DashboardCubit>();
  //declare the controller, since it using binding so we can use FIND to find the controller
  final dController = Get.find<DashboardController>();

  int selectedTab = 0;
  @override
  void initState() {
    super.initState();
  }

  PanelController panelController = PanelController();

  Widget menu = Container();
  Widget appBarTitle = Text("List Product");
  Widget appBarLeading = SizedBox();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: appBarTitle,
        leading: appBarLeading,
      ),
      //Sliding panel is dependecy to make slidable nav bar
      body: SlidingUpPanel(
        backdropColor: Colors.transparent,
        boxShadow: null,
        maxHeight: Get.size.height,
        onPanelOpened: () {
          setState(() {
            menu = Container(
              margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Features",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 15),
                  Expanded(
                    child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 4,
                              crossAxisSpacing: 5,
                              childAspectRatio: 1,
                              mainAxisSpacing: 5),
                      itemCount: 9,
                      itemBuilder: (context, index) {
                        return Container(
                          child: Column(
                            children: const [
                              CircleAvatar(
                                  radius: 27,
                                  child: Center(
                                    child: Icon(
                                      Icons.book,
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                  )),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "nama fitur",
                                style: TextStyle(fontSize: 12),
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            );

            appBarTitle = SizedBox();
            appBarLeading = IconButton(
                onPressed: () {
                  panelController.close();
                },
                icon: Icon(Icons.arrow_back));
          });
        },
        onPanelClosed: () {
          setState(() {
            menu = Container();
            appBarTitle = Text("List Product");
            appBarLeading = SizedBox();
          });
        },
        controller: panelController,
        panel: Container(decoration: BoxDecoration(), child: menu),
        collapsed: FloatingNavbar(
          backgroundColor: Colors.white,
          selectedBackgroundColor: Colors.transparent,
          elevation: 50,
          borderRadius: 30,
          unselectedItemColor: Colors.black,
          selectedItemColor: Colors.red,
          margin: const EdgeInsets.symmetric(horizontal: 30),
          onTap: (int val) {
            //returns tab id which is user tapped
            setState(() {
              selectedTab = val;
            });
          },
          currentIndex: selectedTab,
          items: [
            FloatingNavbarItem(icon: Icons.home, title: 'Home'),
            FloatingNavbarItem(icon: Icons.explore, title: 'Explore'),
            FloatingNavbarItem(icon: Icons.chat_bubble_outline, title: 'Chats'),
            FloatingNavbarItem(icon: Icons.settings, title: 'Settings'),
          ],
        ),

        //using Bloc to get data from API 
        body: BlocProvider(
          create: (context) => dashboardCubit..getProductList(),
          child: BlocConsumer<DashboardCubit, DashboardState>(
            listener: (context, state) {
              state.maybeMap(
                orElse: () {},
                onGetProductList: (e) {
                  //Save data to provider (GetxController)
                  dController.setProductList(e.list);
                  
                  _refreshController.refreshCompleted();
                },
                onError: (e) {},
              );
            },
            builder: (context, state) {
              //Using obx to make list product observable from controller / provider
              return Obx(
                () => Container(
                  padding: EdgeInsets.all(10),
                  child: SmartRefresher(
                      enablePullDown: true,
                      header: const WaterDropHeader(),
                      controller: _refreshController,
                      onRefresh: _onRefresh,
                      child: GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                childAspectRatio: 1,
                                mainAxisSpacing: 10,
                                crossAxisSpacing: 10),
                        itemCount: dController.getProductList.length,
                        itemBuilder: (context, index) {
                          return ProductItemCard(
                              product: dController.getProductList[index]);
                        },
                      )),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

class ProductItemCard extends StatelessWidget {
  const ProductItemCard({Key? key, required this.product}) : super(key: key);
  final ProductDataModel product;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.toNamed(ProductDetailPage.routeName, arguments: product);
      },
      child: Card(
        clipBehavior: Clip.hardEdge,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        elevation: 5,
        margin: EdgeInsets.zero,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 5,
              child: Image.network(
                product.cover!,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.name!,
                      style: TextStyle(fontSize: 15),
                    ),
                    Text(
                      Formatter.formatPrice(product.price),
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
