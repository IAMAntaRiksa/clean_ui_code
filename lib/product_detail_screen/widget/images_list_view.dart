import 'package:flutter/material.dart';

class ImgListViewWidget extends StatelessWidget {
  final List<String> productImgList;
  const ImgListViewWidget({Key? key, required this.productImgList})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        ...List.generate(productImgList.length, (index) {
          final img = productImgList[index];
          final imgSize = (MediaQuery.of(context).size.width - 67) / 4;
          return Container(
            height: imgSize,
            width: imgSize,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: Image.asset(img).image,
              ),
            ),
          );
        })
      ],
    );
  }
}
