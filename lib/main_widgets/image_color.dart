import 'package:flutter/material.dart';
class ImageColor extends StatelessWidget {
  final Color color;
  final bool IsSelected;
  const ImageColor({Key? key, required this.color,this.IsSelected=false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5.0),
      padding: const EdgeInsets.all(3),
      height: 25.0,
      width: 25,
      decoration: BoxDecoration(
          border: Border.all(
             color:IsSelected? Colors.grey: Colors.transparent
          ),
          // color: Colors.blueGrey,
          shape: BoxShape.circle),
      child: Container(
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: color
        ),
      ),
    );

  }
}
