import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:mytestapp/app/components/appbar_component.dart';

import '../controllers/wishlist_controller.dart';

class WishlistView extends GetView<WishlistController> {
  const WishlistView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade100,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppbarComponent(
            title: "WishList (6)",
          ),
        ),
        body: ListView.builder(
            itemCount: 6,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(4.0),
                child: Container(
                  height: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade400,
                          blurRadius: 1.0,
                          spreadRadius: 1.0,
                          offset: Offset(1.0, 1.0),
                        )
                      ]),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image(
                                image: NetworkImage(
                                    'https://www.bankrate.com/2021/10/20113352/outreach-car-average-car-weight-featured.jpg?auto=webp&optimize=high&crop=16:9'),
                                height: 100,
                                width: 100,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "120W RANGE ROVER",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.star),
                                      Text(
                                        "Cacao",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RawMaterialButton(
                              onPressed: () {},
                              elevation: 2.0,
                              fillColor: Color.fromARGB(255, 245, 131, 0),
                              child: Icon(
                                Icons.close,
                                size: 15.0,
                                color: Colors.white,
                              ),
                              shape: CircleBorder(),
                              constraints: BoxConstraints(
                                minWidth: 20,
                                minHeight: 20,
                              ),
                            ),
                            Text(
                              "120\$",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 245, 131, 0),
                              ),
                            ),
                            MaterialButton(
                              onPressed: () {},
                              minWidth: 60,
                              child: Icon(
                                Icons.add_shopping_cart,
                                color: Colors.white,
                                size: 15,
                              ),
                              color: Color.fromARGB(255, 245, 131, 0),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              )),
                            )
                          ],
                        )
                      ]),
                ),
              );
            }));
  }
}
