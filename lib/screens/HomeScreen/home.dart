import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test2/screens/ProductsScreen/Products.dart';
import 'package:test2/widgets/ProductsWidgets.dart';
import 'package:test2/widgets/catNav.dart';
import 'package:test2/widgets/saleWidget.dart';
import 'package:test2/widgets/searchBar.dart';
import 'package:carousel_slider/carousel_slider.dart' as carousel;

import '../SearchResultsScreen/SearchResults.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _searchController = TextEditingController();

  int _currentCarouselIndex = 0;

  static final Map<String, List<String>> featured = {
    'title': [
      'Watch',
      'Nike Shoes',
      'Airpods',
    ],
    'price': [
      '\$40',
      '\$430',
      '\$333',
    ],
    'imagePath': [
      'assets/images/watch.jpg',
      'assets/images/nikeShoe.jpg',
      'assets/images/Airpods.jpg',
    ],
  };

  static final Map<String, List<String>> popular = {
    'title': [
      'LG TV',
      'Hoodie',
      'Jacket',
    ],
    'price': [
      '\$330',
      '\$400',
      '\$50',
    ],
    'imagePath': [
      'assets/images/LGTV.jpg',
      'assets/images/Hoodie.jpg',
      'assets/images/Jacket.jpg',
    ],
  };

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView( child:  Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 35, right: 15, left: 15),
            child: Column(
              children: [
                SizedBox(height: 40),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage('assets/images/6443ef6106d14ac904b7c95d55f0ec2b9f356126.jpg'),
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hello!',
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          'John Williams',
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    CircleAvatar(
                      radius: 25,
                      backgroundColor: Color(0xffF8F7F7),
                      foregroundColor: Color(0xff7C7979),
                      child: Icon(Icons.notifications),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 25),
                  child: searchBar(
                    searchController: _searchController,
                    onSubmitted: (value) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SearchResultsPage(query: value),
                        ),
                      );
                    },
                  ),
                ),
                carousel.CarouselSlider(
                  options: carousel.CarouselOptions(
                    height: 160,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 5),
                    enlargeCenterPage: true,
                    enableInfiniteScroll: false,
                    viewportFraction: 1,
                    onPageChanged: (index, reason) {
                      setState(() {
                        _currentCarouselIndex = index;
                      });
                    },
                  ),
                  items: [
                    saleWidget(),
                    saleWidget(),
                    saleWidget(),
                    saleWidget(),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [0, 1, 2, 3].map((index) {
                    return Container(
                      width: 10.0,
                      height: 10.0,
                      margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: _currentCarouselIndex == index
                            ? Color(0xff6055D8)
                            : Colors.grey[300],
                      ),
                    );
                  }).toList(),
                ),
              ],
            ),
          ),
          SizedBox(height: 5,),
          catnav(text: 'Featured', dir: ProductsScreen()),
          SizedBox(
            height: 170,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(horizontal: 8),
              itemCount: featured['title']!.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: SizedBox(
                    width: 130,
                    child: ProductCard(
                      title: featured['title']![index],
                      price: featured['price']![index],
                      imagePath: featured['imagePath']![index],
                      imageHeight: 110,
                    ),
                  ),
                );
              },
            ),
          ),
          catnav(text: 'Most Popular', dir: ProductsScreen()),
          SizedBox(
            height: 170,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(horizontal: 8),
              itemCount: popular['title']!.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: SizedBox(
                    width: 130,
                    child: ProductCard(
                      title: popular['title']![index],
                      price: popular['price']![index],
                      imagePath: popular['imagePath']![index],
                      imageHeight: 110,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),)
    );
  }
}