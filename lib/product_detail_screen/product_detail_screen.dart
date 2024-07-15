import 'package:flutter/material.dart';
import 'package:ui_clean_code/product_detail_screen/widget/buttom_fixed_button_widget.dart';
import 'package:ui_clean_code/product_detail_screen/widget/images_list_view.dart';
import 'package:ui_clean_code/product_detail_screen/widget/leading_info_view_widget.dart';
import 'package:ui_clean_code/product_detail_screen/widget/product_detail_header_widget.dart';
import 'package:ui_clean_code/product_detail_screen/widget/product_detail_list_widget.dart';
import 'package:ui_clean_code/product_detail_screen/widget/size_info_view_widget.dart';

class ProductDetailScreen extends StatefulWidget {
  const ProductDetailScreen({super.key});

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  int selectedIndex = 0;

  final List<String> sizeOptions = ['S', 'M', 'L', 'XL'];

  void onSizeSelected(int index) {
    setState(() {
      selectedIndex = index;
    });
    print('Selected size: ${sizeOptions[index]}');
  }

  @override
  Widget build(BuildContext context) {
    return ListProdudctDetailWidget(
      header: const ProductDetailHeaderWidget(
        image: 'assets/images/product_img_0.png',
      ),
      leadingInfoView: const LeadingInfoViewWidget(
        title: 'Nike Air Max 270',
        priceProduct: '\$120',
        titleProduct: 'Men\'s Shoe',
      ),
      imgListView: const ImgListViewWidget(
        productImgList: [
          'assets/images/product_img_0.png',
          'assets/images/product_img_1.png',
          'assets/images/product_img_2.png',
          'assets/images/product_img_3.png',
          'assets/images/product_img_3.png',
        ],
      ),
      sizeInfoView: SizeInfoViewWidget(
        onClick: (p0) => onSizeSelected(p0),
        selectedIndex: selectedIndex,
        size: sizeOptions,
      ),
      // descriptionView: _DescriptionInfoView(),
      // reviewListView: _ReviewListView(),
      // priceInfoView: _PriceInfoView(),
      bottomFixedButton: ButtomFixedButtonWidget(
        onPressed: () => print('Add to cart'),
      ),
    );
  }
}
