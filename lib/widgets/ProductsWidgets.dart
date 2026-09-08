import 'package:flutter/material.dart';

class ProductCard extends StatefulWidget {
  final String title;
  final String price;
  final String imagePath;

   ProductCard({
    super.key,
    required this.title,
    required this.price,
    required this.imagePath,
  });

  factory ProductCard.watch({Key? key}) =>  ProductCard(
    key: key,
    title: 'Watch',
    price: '\$40',
    imagePath: 'assets/images/watch.jpg',
  );

  factory ProductCard.nikeShoes({Key? key}) =>  ProductCard(
    key: key,
    title: 'Nike Shoes',
    price: '\$430',
    imagePath: 'assets/images/nikeShoe.jpg',
  );

  factory ProductCard.lgTv({Key? key}) =>  ProductCard(
    key: key,
    title: 'LG TV',
    price: '\$330',
    imagePath: 'assets/images/LGTV.jpg',
  );

  factory ProductCard.airpods({Key? key}) =>  ProductCard(
    key: key,
    title: 'Airpods',
    price: '\$333',
    imagePath: 'assets/images/Airpods.jpg',
  );

  factory ProductCard.jacket({Key? key}) =>  ProductCard(
    key: key,
    title: 'Jacket',
    price: '\$50',
    imagePath: 'assets/images/Jacket.jpg',
  );

  factory ProductCard.hoodie({Key? key}) =>  ProductCard(
    key: key,
    title: 'Hoodie',
    price: '\$400',
    imagePath: 'assets/images/Hoodie.jpg',
  );

  factory ProductCard.shirt({Key? key}) =>  ProductCard(
    key: key,
    title: 'T-Shirt',
    price: '\$150',
    imagePath: 'assets/images/shirt.jpg',
  );

  factory ProductCard.outfit({Key? key}) =>  ProductCard(
    key: key,
    title: 'Full Outfit',
    price: '\$750',
    imagePath: 'assets/images/fulloutfit.jpg',
  );

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.asset(
                    widget.imagePath,
                    width: double.infinity,
                    height: double.infinity,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return Container(
                        color: Colors.grey[300],
                        child: const Center(
                          child: Icon(
                            Icons.image,
                            color: Colors.grey,
                            size: 40,
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Positioned(
                  top: 8,
                  right: 8,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        isFavorite = !isFavorite;
                      });
                    },
                    child: CircleAvatar(
                      radius: 14,
                      backgroundColor: Colors.black.withOpacity(0.3),
                      child: Icon(
                        isFavorite ? Icons.favorite : Icons.favorite_border,
                        color: Colors.white,
                        size: 16,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.title,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    widget.price,
                    style: const TextStyle(
                      color: Color(0xFF6055D8),
                      fontWeight: FontWeight.w600,
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
              InkWell(
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('${widget.title} added to cart!'),
                      duration: const Duration(seconds: 1),
                    ),
                  );
                },
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  padding: const EdgeInsets.all(6),
                  decoration: const BoxDecoration(
                    color: Color(0xFF6055D8),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 16,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}