import 'package:flutter/material.dart';

import '../models/product.dart';

class ProductCard extends StatelessWidget {
  // final int ItemIndex;
  final Product prod;
  final void Function()? onprss;

  const ProductCard(
      {Key? key,
      // required this.ItemIndex,
      required this.prod,
      required this.onprss})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.all(20.0),
      height: size.height / 5.0,
      width: size.width / 1.1,
      // color: Colors.greenAccent,

      child: InkWell(
        onTap: onprss,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: size.height / 5.5,
              width: size.width / 1.1,
              decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                      offset: Offset(0, 15),
                      blurRadius: 25.0,
                      color: Colors.black38)
                ],
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
            Positioned(
                top: 0.0,
                left: 0.0,
                child: SizedBox(
                  width: size.width / 2,
                  height: size.height / 6,
                  child: Hero(
                      tag: 'Main',
                      child: Image.asset(prod.image, fit: BoxFit.contain)),
                )),
            Positioned(
                bottom: 0.0,
                right: 0.0,
                child: SizedBox(
                  width: size.width / 2,
                  height: size.height / 6,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Text(prod.title,
                            style:
                                const TextStyle(fontWeight: FontWeight.bold)),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Text(prod.subTitle,
                            style: const TextStyle(
                                fontWeight: FontWeight.normal, fontSize: 10.0)),
                      ),
                      const Expanded(
                        child: SizedBox(),
                      ),
                      Container(
                        width: size.width / 3,
                        height: size.height / 30,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.orangeAccent,
                            borderRadius: BorderRadius.circular(20.0)),
                        child: Text("Price :${prod.price} "),
                      ),
                      const SizedBox(
                        height: 20.0,
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
