import 'package:flutter/material.dart';
import 'package:oline_store/main_widgets/home_appbar.dart';
import 'package:oline_store/screens/produc_details.dart';

import '../main_widgets/Product_card.dart';
import '../models/product.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.teal[300],
        appBar: HomeAppBar(),
        body: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                      top: 70,
                    ),
                    height: MediaQuery.of(context).size.height / 1.25,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40.0),
                          topRight: Radius.circular(40.0),
                        )),
                  ),
                  ListView.builder(
                    itemBuilder: (context, index) => ProductCard(
                      prod: products[index],
                      onprss: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  ProductDetails(prod: products[index]),
                            ));
                      },
                    ),
                    itemCount: products.length,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
