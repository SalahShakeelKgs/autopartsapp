import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:mytestapp/app/components/appbar_component.dart';

import '../controllers/myorders_controller.dart';

class MyordersView extends GetView<MyordersController> {
  const MyordersView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppbarComponent(
          title: "My Orders",
        ),
      ),
      body: ListView.builder(
          shrinkWrap: true,
          itemCount: 3,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(4.0),
              child: Container(
                  height: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade200,
                          blurRadius: 1.0,
                          spreadRadius: 1.0,
                          offset: Offset(1.0, 1.0),
                        )
                      ]),
                  child: Column(children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: RichText(
                          text: TextSpan(children: [
                        TextSpan(
                            text: "Order ID: ",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 245, 131, 0),
                            )),
                        TextSpan(
                            text: "123456789",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ))
                      ])),
                    ),
                    Text("( 4 Items )", style: TextStyle(color: Colors.grey)),
                    Text("Total Price: 1000 TK",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Text("Mar 22 2022 2:30 PM",
                        style: TextStyle(
                          fontSize: 12,
                        )),
                    Text("32 minutes ago", style: TextStyle(fontSize: 12)),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: MaterialButton(
                        padding: EdgeInsets.only(left: 20, right: 20),
                        onPressed: () {},
                        color: Color.fromARGB(255, 245, 131, 0),
                        textColor: Colors.white,
                        child: Text("Order Details"),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    )
                  ])),
            );
          }),
    );
  }
}
