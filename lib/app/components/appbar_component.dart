import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:badges/badges.dart' as badges;

class AppbarComponent extends StatelessWidget {
  final String? title;
  const AppbarComponent({super.key, this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title ?? "AutoParts"),
      centerTitle: true,
      foregroundColor: Colors.white,
      actions: [
        badges.Badge(
          badgeContent: Text(
            '3',
            style: TextStyle(color: Colors.white),
          ),
          child: Icon(Icons.shopping_cart),
          position: badges.BadgePosition.custom(bottom: 10, end: 15),
        ),
        IconButton(
          padding: EdgeInsets.only(left: 20, right: 20),
          onPressed: () {},
          icon: const Icon(Icons.search),
        )
      ],
      flexibleSpace: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.topLeft,
              colors: <Color>[
                Color.fromARGB(255, 248, 171, 56),
                Color.fromARGB(255, 245, 131, 0),
                Color.fromARGB(255, 245, 131, 0)
              ]),
        ),
      ),
    );
  }
}
