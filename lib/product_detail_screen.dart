import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> productImgList = [
      'assets/images/product_img_0.png',
      'assets/images/product_img_1.png',
      'assets/images/product_img_2.png',
      'assets/images/product_img_3.png',
      'assets/images/product_img_1.png',
      'assets/images/product_img_2.png',
      'assets/images/product_img_3.png',
    ];

    List<String> sizeOptions = ['S', 'M', 'L', 'XL', 'XXL'];

    const String productDescription =
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit.';
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                // HEADER
                Container(
                  height: 386,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: Image.asset('assets/images/product_img_0.png')
                            .image,
                        fit: BoxFit.cover),
                  ),
                ),
                const SizedBox(height: 15),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      // PRODUCT INFO
                      SizedBox(
                        width: double.infinity,
                        child: Wrap(
                          crossAxisAlignment: WrapCrossAlignment.end,
                          alignment: WrapAlignment.spaceBetween,
                          children: <Widget>[
                            Wrap(
                              direction: Axis.vertical,
                              children: [
                                Text('Men\'s Printed Pullover Hoodie ',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black,
                                    )),
                                const SizedBox(height: 8),
                                // NAME
                                Text(
                                  'Nike Club Fleece',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),

                            Wrap(
                              direction: Axis.vertical,
                              children: <Widget>[
                                Text('Price',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black,
                                    )),
                                const SizedBox(height: 8),
                                Text(
                                  '\$120',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                            // CATEGORY
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),

                      // PRODUCT PICTURE LIST
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            ...List.generate(productImgList.length, (index) {
                              final img = productImgList[index];
                              final imgSize =
                                  (MediaQuery.of(context).size.width - 67) / 4;
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
                        ),
                      ),
                      const SizedBox(height: 15),

                      // SIZE
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Text>[
                          Text(
                            'Size',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            'Size Guide',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 10),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          ...List.generate(sizeOptions.length, (index) {
                            final option = sizeOptions[index];
                            final buttonSize =
                                (MediaQuery.of(context).size.width - 76) / 5;
                            return ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.zero,
                                  minimumSize: Size(buttonSize, buttonSize),
                                  elevation: 0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  backgroundColor: Colors.lightGreen,
                                  foregroundColor: Colors.black),
                              onPressed: () {},
                              child: Text(option),
                            );
                          })
                        ],
                      ),
                      const SizedBox(height: 20),

                      // DESCRIPTION
                      Text(
                        'Description',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        productDescription,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      ),
                      // REVIEWS
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Reviews',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                'View All',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                ),
                              ))
                        ],
                      ),

                      const SizedBox(height: 16),
                      ListView.builder(
                        padding: EdgeInsets.zero,
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: 1,
                        itemBuilder: (context, index) {
                          return Column(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  // PROFILE IMAGE
                                  Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                        image: Image.asset(
                                          'assets/images/avatar.png',
                                        ).image,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 10),

                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      // REVIEWER NAME
                                      Text(
                                        'Ronald Richards',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black,
                                        ),
                                      ),
                                      const SizedBox(height: 5),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          SvgPicture.asset(
                                              'assets/icons/clock.svg'),
                                          const SizedBox(width: 5),
                                          Text(
                                            '13 Sep, 2020',
                                            style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.grey,
                                            ),
                                          )
                                        ],
                                      ),
                                      // REVIEWED DATE
                                    ],
                                  ),
                                  const Spacer(),
                                  Column(
                                    children: <Widget>[
                                      Text.rich(
                                        TextSpan(
                                          children: <TextSpan>[
                                            TextSpan(
                                              text: '4.8',
                                              style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.black,
                                              ),
                                            ),
                                            TextSpan(
                                              text: '  rating',
                                              style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      // my boss is fool
                                      const SizedBox(height: 5),
                                      SvgPicture.asset(
                                          'assets/icons/group_star.svg')
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10),
                              Text(
                                'Lorem ipsum dolor sit amet, consectetur...',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey,
                                ),
                              )
                            ],
                          );
                        },
                      ),

                      const SizedBox(height: 20),

                      // TOTAL Price
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Total Price',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                ),
                              ),
                              const SizedBox(height: 5),
                              Text(
                                'with VAT, SD',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey,
                                ),
                              )
                            ],
                          ),
                          Text(
                            '\$125',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          )
                        ],
                      ),

                      SizedBox(
                        height: MediaQuery.of(context).padding.bottom + 96,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),

          // BOTTOM FIXED BUTTON
          Positioned(
            bottom: 0,
            child: MaterialButton(
              elevation: 0,
              onPressed: () {},
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).padding.bottom),
              height: 56 + MediaQuery.of(context).padding.bottom,
              minWidth: MediaQuery.of(context).size.width,
              color: Colors.purple,
              child: Text(
                'Add to Cart',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
