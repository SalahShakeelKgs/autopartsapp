import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:mytestapp/app/components/appbar_component.dart';

import '../controllers/orderdetails_controller.dart';

class OrderdetailsView extends GetView<OrderdetailsController> {
  const OrderdetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppbarComponent(
          title: "Order Details",
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: Get.height / 2,
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 20,
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
                                          Text("\$1000",
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  color: Color.fromARGB(
                                                      255, 245, 131, 0),
                                                  fontWeight: FontWeight.bold)),
                                        ],
                                      ))
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 20),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.close,
                                      size: 15,
                                      color: Color.fromARGB(255, 245, 131, 0),
                                    ),
                                    Text(
                                      "3",
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ]),
                      ),
                    );
                  }),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, left: 8.0, bottom: 8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Table(children: [
                  TableRow(children: [
                    Text(
                      "Customer Name",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text("John Doe")
                  ]),
                  TableRow(children: [
                    Text("Phone",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Text("+44 1234567890")
                  ]),
                  TableRow(children: [
                    Text("City", style: TextStyle(fontWeight: FontWeight.bold)),
                    Text("Toronto")
                  ]),
                  TableRow(children: [
                    Text("Area", style: TextStyle(fontWeight: FontWeight.bold)),
                    Text("Toronto")
                  ]),
                  TableRow(children: [
                    Text("House No.",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Text("A-123 ABC Street")
                  ]),
                  TableRow(children: [
                    Text("Area Code",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Text("23222")
                  ]),
                ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 50,
                width: Get.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade400,
                        blurRadius: 1.0,
                        spreadRadius: 1.0,
                        offset: Offset(1.0, 1.0),
                      )
                    ]),
                child: Center(
                  child: Text(
                    "Order Status",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ),
            Stepper(
                connectorColor: MaterialStateColor.resolveWith(
                    (states) => Color.fromARGB(255, 245, 131, 0)),
                steps: <Step>[
                  Step(
                    title: Text("Order Received"),
                    content: Container(
                      alignment: Alignment.centerLeft,
                      child: Row(
                        children: [
                          Icon(Icons.alarm, color: Colors.grey),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text('Content for Step 1'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Step(
                    title: Text("Order Prepared"),
                    content: Container(
                      alignment: Alignment.centerLeft,
                      child: Row(
                        children: [
                          Icon(Icons.alarm, color: Colors.grey),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text('Content for Step 1'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Step(
                    title: Text("On The Way"),
                    content: Container(
                      alignment: Alignment.centerLeft,
                      child: Row(
                        children: [
                          Icon(Icons.alarm, color: Colors.grey),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text('Content for Step 1'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Step(
                    title: Text("Delivered"),
                    content: Container(
                      alignment: Alignment.centerLeft,
                      child: Row(
                        children: [
                          Icon(Icons.alarm, color: Colors.grey),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text('Content for Step 1'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ])
          ],
        ),
      ),
    );
  }
}
