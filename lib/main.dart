import 'package:flutter/material.dart';
import 'package:stiki_got_tallent/detail.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Utils.colorPrimary,
        backgroundColor: Utils.colorBackground,
        appBarTheme: AppBarTheme(
          color: Utils.colorBackground,
          iconTheme: IconThemeData(
            color: Colors.black87,
          ),
          elevation: 0,
        ),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<String> prices = [
    "Rp 280K",
    "Rp 320K",
    "Rp 230K",
    "Rp 160K",
    "Rp 540K",
    "Rp 340K",
    "Rp 360K",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   leading: Icon(
      //     Icons.person_rounded,
      //     color: Colors.black87,
      //   ),
      //   actions: [
      //     Icon(Icons.search),
      //   ],
      // ),
      body: Container(
        color: Utils.colorBackground,
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 16,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.person_rounded,
                    color: Colors.black87,
                    size: 32,
                  ),
                  Icon(
                    Icons.search,
                    color: Colors.black87,
                    size: 32,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Catalog',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: Utils.boxShadow,
                        color: Colors.white,
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.sort,
                            size: 32,
                          ),
                          Text('Filter'),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: Utils.boxShadow,
                      color: Utils.colorPrimary,
                    ),
                    child: Image.asset(
                      'assets/nike.png',
                      height: 32,
                      width: 32,
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: Utils.boxShadow,
                      color: Utils.colorPrimary,
                    ),
                    child: Image.asset(
                      'assets/adidas.png',
                      height: 32,
                      width: 32,
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: Utils.boxShadow,
                      color: Colors.white,
                    ),
                    child: Image.asset(
                      'assets/puma-3.png',
                      height: 32,
                      width: 32,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: GridView.builder(
                padding: EdgeInsets.symmetric(vertical: 16),
                primary: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, childAspectRatio: 0.8),
                itemCount: 7,
                itemBuilder: (context, index) => ItemGrid(
                  index: index,
                  price: prices[index],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ItemGrid extends StatelessWidget {
  final int index;
  final String imageAssets;
  final String title;
  final String price;

  const ItemGrid({Key key, this.index, this.imageAssets, this.title, this.price}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailItem(
              imageAsset: 'assets/shoes_$index.png',
              name: 'Title of shoes $index',
              price: price == null ? "" : "$price",
            ),
          ),
        );
      },
      child: Padding(
        padding: index % 2 == 1
            ? EdgeInsets.only(right: 16, bottom: 16, left: 8)
            : EdgeInsets.only(left: 16, bottom: 16, right: 8),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            boxShadow: Utils.boxShadow,
            color: Colors.white,
          ),
          padding: EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Icon(Icons.star_border),
                  Expanded(
                    child: SizedBox(),
                  ),
                  Icon(Icons.add, color: Utils.colorPrimary),
                ],
              ),
              Expanded(
                child: Image.asset('assets/shoes_$index.png'),
              ),
              Text(
                'Title of shoes $index',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black87,
                ),
              ),
              Text(
                price == null ? "" : "$price",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Utils.colorPrimary, fontWeight: FontWeight.w700),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Utils {
  static List<BoxShadow> boxShadow = <BoxShadow>[
    BoxShadow(
      color: Colors.grey.withOpacity(0.2),
      offset: const Offset(0.2, 3),
      blurRadius: 12,
      spreadRadius: 0,
    ),
  ];

  static List<BoxShadow> boxShadow2 = [
    BoxShadow(
      color: Colors.grey.withOpacity(0.5),
      spreadRadius: 5,
      blurRadius: 7,
      offset: Offset(0, 3), // changes position of shadow
    ),
  ];

  static Color colorPrimary = Color(0xFFE39423);
  static Color colorBackground = Color(0xFFF6F7FC);
  static Color colorSecondary = Color(0xFFB1B0D8);
}
