import 'package:flutter/material.dart';
import 'package:GroceryApp/models/Product.dart';
import 'package:GroceryApp/constants.dart';

import 'components/Header.dart';
import 'components/ProductCard.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          bottom: false,
          child: Container(
            color: const Color(0xFFEAEAEA),
            child: Stack(children: [
              Column(
                children: [
                  const Positioned(
                      top: 0,
                      left: 0,
                      right: 0,
                      height: headerHeight,
                      child: HomeHeader()),
                  Expanded(
                      child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: defaultPadding),
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(defaultPadding * 1.5),
                            bottomRight:
                                Radius.circular(defaultPadding * 1.5))),
                    child: GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                childAspectRatio: 0.75,
                                mainAxisSpacing: defaultPadding,
                                crossAxisSpacing: defaultPadding),
                        itemBuilder: (context, index) => ProductCard(
                            product: demo_products[index], press: () {})),
                  )),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    height: carBarHeight,
                    child: Container(
                      color: Colors.red,
                    ),
                  )
                ],
              ),
            ]),
          )),
    );
  }
}
