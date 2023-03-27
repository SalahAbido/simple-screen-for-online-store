import 'package:flutter/material.dart';
import 'package:oline_store/main_widgets/image_color.dart';
import 'package:oline_store/models/product.dart';

class ProductDetails extends StatelessWidget {
  final Product prod;

  const ProductDetails({Key? key, required this.prod}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        title: const Text(
          "Back",
          style: TextStyle(color: Colors.teal),
        ),
        elevation: 0.0,
        backgroundColor: Colors.white,
        leadingWidth: 50.0,
        // shadowColor: Colors.teal,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.teal,
            )),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(15.0),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(50.0),
                bottomRight: Radius.circular(50.0),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Container(
                      margin: const EdgeInsets.all(20.0),
                      width: size.width * .8,
                      height: size.width * .8,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(150.0),
                      ),
                    ),
                    Container(
                      width: size.width * 0.8,
                      height: size.height * 0.8 / 1.7,
                      decoration: BoxDecoration(
                        // color: Colors.black,
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      child: Hero(
                          tag: 'Main',
                          child: Image.asset(prod.image, fit: BoxFit.contain)),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ImageColor(color: prod.color, IsSelected: true),
                    const ImageColor(
                      color: Colors.amberAccent,
                    ),
                    const ImageColor(color: Colors.blue),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    prod.title,
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Price : ${prod.price} \$",
                      style:
                          const TextStyle(color: Colors.amber, fontSize: 20.0)),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(15.0),
            child: Text(prod.description,
                style: const TextStyle(fontSize: 20.0, color: Colors.white)),
          )
        ],
      ),
    );
  }
}
