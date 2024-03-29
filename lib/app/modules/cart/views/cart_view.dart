import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:mytestapp/app/components/appbar_component.dart';

import '../controllers/cart_controller.dart';

class CartView extends GetView<CartController> {
  const CartView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppbarComponent(
            title: "My Cart",
          ),
        ),
        floatingActionButton: Container(
          width: 120,
          height: 50,
          child: FloatingActionButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            onPressed: () {},
            foregroundColor: Colors.white,
            backgroundColor: Color.fromARGB(255, 245, 131, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.shopping_cart, size: 20),
                Text(
                  "Checkout",
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Total Price: 120\$",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: 3,
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text("120W RANGE ROVER",
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold)),
                                          Row(
                                            children: [
                                              OutlinedButton(
                                                style: OutlinedButton.styleFrom(
                                                    side: BorderSide(
                                                        color: Colors
                                                            .grey.shade300)),
                                                onPressed: () {
                                                  debugPrint('Received click');
                                                },
                                                child: Row(
                                                  children: [
                                                    Icon(
                                                      Icons.add,
                                                      size: 18,
                                                      color: Color.fromARGB(
                                                          255, 245, 131, 0),
                                                    ),
                                                    Text(
                                                      'Remove',
                                                      style: TextStyle(
                                                        color: Color.fromARGB(
                                                            255, 245, 131, 0),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 10),
                                                child: Row(
                                                  children: [
                                                    Container(
                                                      height: 20,
                                                      width: 40,
                                                      child: OutlinedButton(
                                                        style: OutlinedButton
                                                            .styleFrom(
                                                                side: BorderSide(
                                                                    color: Colors
                                                                        .grey
                                                                        .shade300),
                                                                padding:
                                                                    EdgeInsets
                                                                        .all(
                                                                            2.0)),
                                                        onPressed: () {
                                                          debugPrint(
                                                              'Received click');
                                                        },
                                                        child: Icon(
                                                          Icons.add,
                                                          size: 15,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                      child: Text(
                                                        "1",
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                    ),
                                                    Container(
                                                      height: 20,
                                                      width: 40,
                                                      child: OutlinedButton(
                                                        style: OutlinedButton
                                                            .styleFrom(
                                                                side: BorderSide(
                                                                    color: Colors
                                                                        .grey
                                                                        .shade300),
                                                                padding:
                                                                    EdgeInsets
                                                                        .all(
                                                                            2.0)),
                                                        onPressed: () {
                                                          debugPrint(
                                                              'Received click');
                                                        },
                                                        child: Icon(
                                                          Icons.remove,
                                                          size: 15,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              )
                                            ],
                                          )
                                        ],
                                      ))
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 20),
                                child: Text(
                                  "120\$",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 245, 131, 0),
                                  ),
                                ),
                              ),
                            ]),
                      ),
                    );
                  }),
            ],
          ),
        ));
  }
}
