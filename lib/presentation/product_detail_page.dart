import 'package:flutter/material.dart';
import 'package:folkatech/domain/product_data_model.dart';
import 'package:folkatech/utils/formatter.dart';
import 'package:get/get.dart';

class ProductDetailPage extends StatefulWidget {
  static const String routeName = '/product-detail';
  const ProductDetailPage({Key? key}) : super(key: key);

  @override
  _ProductDetailPageState createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  ProductDataModel? product;
  @override
  void initState() {
    product = Get.arguments as ProductDataModel;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Detail Product"),
      ),
      body: SizedBox.expand(
        child: Stack(
          children: [
            // ignore: sized_box_for_whitespace
            Container(
                height: Get.size.height / 2 + 20,
                width: double.infinity,
                child: Image.network(
                  product!.cover!,
                  fit: BoxFit.cover,
                )),
            DraggableScrollableSheet(
              initialChildSize: 0.5,
              minChildSize: 0.5,
              builder:
                  (BuildContext context, ScrollController scrollController) {
                return Container(
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(30))),
                    child: Stack(
                      children: [
                        CustomScrollView(
                          controller: scrollController,
                          physics: const BouncingScrollPhysics(),
                          slivers: [
                            const SliverToBoxAdapter(
                                child: SizedBox(height: 10)),
                            SliverToBoxAdapter(
                              child: Center(
                                child: Icon(Icons.line_style),
                              ),
                            ),
                            SliverToBoxAdapter(
                              child: Card(
                                elevation: 6,
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                margin: EdgeInsets.symmetric(horizontal: 20),
                                child: Container(
                                  height: 80,
                                  color: Colors.white,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 15),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(product!.name!,
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold)),
                                      SizedBox(height: 10),
                                      Text(
                                          Formatter.formatPrice(
                                              product!.price!),
                                          style: TextStyle(color: Colors.grey)),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SliverToBoxAdapter(
                              child: Container(
                                margin: EdgeInsets.only(
                                    right: 20, left: 20, top: 20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Description",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold)),
                                    SizedBox(height: 10),
                                    Text(
                                      product!.desc!,
                                      style: TextStyle(height: 1.4),
                                      textAlign: TextAlign.left,
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ));
              },
            ),
          ],
        ),
      ),
    );
  }
}
