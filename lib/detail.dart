import 'package:flutter/material.dart';
import 'package:stiki_got_tallent/main.dart';

class DetailItem extends StatelessWidget {
  final String imageAsset;
  final String name;
  final String price;

  const DetailItem({Key key, this.imageAsset, this.name, this.price}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        color: Utils.colorSecondary,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.all(32),
                child: Image.asset(imageAsset),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 16,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      child: Icon(
                        Icons.chevron_left,
                        color: Colors.white,
                        size: 32,
                      ),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    Icon(
                      Icons.star_border,
                      color: Colors.white,
                      size: 32,
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2,
                padding: EdgeInsets.all(24),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  boxShadow: Utils.boxShadow,
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      '$name',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.black87),
                    ),
                    Text(
                      'EQT Gozzelle',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.black45),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Text(
                      'Size',
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black54),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: List<Widget>.generate(
                        5,
                        (index) => Expanded(
                          child: Container(
                            padding: EdgeInsets.all(16),
                            margin: EdgeInsets.only(right: 8),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              boxShadow: Utils.boxShadow,
                              color: index == 0 ? Utils.colorPrimary : Colors.white,
                            ),
                            child: Center(
                              child: Text(
                                'US${index + 6}',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    color: index == 0 ? Colors.white : Colors.black54),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Text(
                      'Color',
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black54),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 57,
                          height: 57,
                          padding: EdgeInsets.all(16),
                          margin: EdgeInsets.only(right: 8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            boxShadow: Utils.boxShadow,
                            color: Colors.white,
                            border: Border.all(color: Utils.colorPrimary, width: 1),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    color: Colors.yellow,
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    color: Colors.blue,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 57,
                          height: 57,
                          padding: EdgeInsets.all(16),
                          margin: EdgeInsets.only(right: 8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            boxShadow: Utils.boxShadow,
                            color: Colors.white,
                            // border: Border.all(color: Utils.colorPrimary, width: 1),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Container(
                              color: Colors.green,
                            ),
                          ),
                        ),
                        Container(
                          width: 57,
                          height: 57,
                          padding: EdgeInsets.all(16),
                          margin: EdgeInsets.only(right: 8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            boxShadow: Utils.boxShadow,
                            color: Colors.yellow,
                            // border: Border.all(color: Utils.colorPrimary, width: 1),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Container(
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: SizedBox(),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        boxShadow: Utils.boxShadow,
                        color: Utils.colorPrimary,
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              "${price}",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18),
                              boxShadow: Utils.boxShadow,
                              color: Colors.white,
                            ),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.shopping_bag,
                                  color: Colors.black87,
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  'Add to cart',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
