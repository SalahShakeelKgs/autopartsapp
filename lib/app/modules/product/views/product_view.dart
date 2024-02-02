import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:mytestapp/app/components/appbar_component.dart';

import '../controllers/product_controller.dart';
import 'package:badges/badges.dart' as badges;

class ProductView extends GetView<ProductController> {
  const ProductView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppbarComponent(
          ),
        ),
        bottomNavigationBar: MaterialButton(
            onPressed: () {},
            color: Color.fromARGB(255, 245, 131, 0),
            height: 50,
            textColor: Colors.white,
            child: Text(
              'Add To Cart',
              style: TextStyle(
                  fontSize: 20, fontWeight: FontWeight.bold, wordSpacing: 5),
            )),
        body: SingleChildScrollView(
          child: Container(
            height: Get.height,
            width: Get.width,
            child: Column(
              children: [
                Expanded(
                    child: Container(
                  height: Get.height,
                  width: Get.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border(
                        bottom:
                            BorderSide(color: Colors.grey.shade300, width: 20)),
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Center(
                          child: Image(
                            image: NetworkImage(
                                'https://www.bankrate.com/2021/10/20113352/outreach-car-average-car-weight-featured.jpg?auto=webp&optimize=high&crop=16:9'),
                            height: Get.height * 0.3,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Poineer TS-2 20mm Carburetor - 2.0L",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "200\$",
                                    ),
                                    Row(
                                      children: [
                                        OutlinedButton(
                                          onPressed: () {
                                            debugPrint('Received click');
                                          },
                                          child: const Icon(
                                            Icons.add,
                                            size: 18,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            "1",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        OutlinedButton(
                                            onPressed: () {
                                              debugPrint('Received click');
                                            },
                                            child: const Icon(
                                              Icons.remove,
                                              color: Colors.black,
                                              size: 18,
                                            ))
                                      ],
                                    )
                                
                                
                                  ],
                                )
                              ]),
                        )
                      ]),
                )),
                Expanded(
                    child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border(
                        bottom:
                            BorderSide(color: Colors.grey.shade300, width: 20)),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 8.0, right: 8.0, top: 20),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Details",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              Icon(Icons.arrow_forward_ios)
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Name:",
                                ),
                                Text(
                                  "Model:",
                                ),
                                Text(
                                  "Year:",
                                ),
                                Text(
                                  "Description:",
                                ),
                              ],
                            ),
                          )
                        ]),
                  ),
                )),
                // Expanded(
                //     child: Container(
                //   color: Colors.white,
                // )),
              ],
            ),
          ),
        ));
  }
}
