import 'package:flutter/material.dart';
import 'package:test2/screens/productDetailsScreen/productDetailsScreen.dart';

class ProductCard extends StatefulWidget {
  final String title;
  final String price;
  final String imagePath;
  final double? imageHeight;
  final double? rating;
  final int? reviewCount;
  final String? description;

  ProductCard({
    super.key,
    required this.title,
    required this.price,
    required this.imagePath,
    this.imageHeight,
    this.rating,
    this.reviewCount,
    this.description,
  });

  factory ProductCard.watch({Key? key}) => ProductCard(
    key: key,
    title: 'Watch',
    price: '\$40',
    imagePath: 'assets/images/watch.jpg',
    rating: 4.5,
    reviewCount: 20,
    description: 'Elegant watch with premium quality. Perfect for daily wear.',
  );

  factory ProductCard.nikeShoes({Key? key}) => ProductCard(
    key: key,
    title: 'Nike Shoes',
    price: '\$430',
    imagePath: 'assets/images/nikeShoe.jpg',
    rating: 4.8,
    reviewCount: 15,
    description: 'Culpa aliquam consequuntur veritatis at consequuntur praesentium beatae temporibus nobis. Velit dolorem facilis neque autem. Itaque voluptatem expedita qui eveniet id veritatis eaque.',
  );

  factory ProductCard.lgTv({Key? key}) => ProductCard(
    key: key,
    title: 'LG TV',
    price: '\$330',
    imagePath: 'assets/images/LGTV.jpg',
    rating: 4.3,
    reviewCount: 25,
    description: 'LG Smart TV with 4K resolution and amazing picture quality.',
  );

  factory ProductCard.airpods({Key? key}) => ProductCard(
    key: key,
    title: 'Airpods',
    price: '\$333',
    imagePath: 'assets/images/Airpods.jpg',
    rating: 4.6,
    reviewCount: 30,
    description: 'Wireless Airpods with noise cancellation and long battery life.',
  );

  factory ProductCard.jacket({Key? key}) => ProductCard(
    key: key,
    title: 'Jacket',
    price: '\$50',
    imagePath: 'assets/images/Jacket.jpg',
    rating: 4.2,
    reviewCount: 18,
    description: 'Stylish jacket for all seasons. Comfortable and durable.',
  );

  factory ProductCard.hoodie({Key? key}) => ProductCard(
    key: key,
    title: 'Hoodie',
    price: '\$400',
    imagePath: 'assets/images/Hoodie.jpg',
    rating: 4.4,
    reviewCount: 22,
    description: 'Premium quality hoodie with soft fabric and modern design.',
  );

  factory ProductCard.shirt({Key? key}) => ProductCard(
    key: key,
    title: 'T-Shirt',
    price: '\$150',
    imagePath: 'assets/images/shirt.jpg',
    rating: 4.1,
    reviewCount: 16,
    description: 'Comfortable cotton t-shirt with stylish design.',
  );

  factory ProductCard.outfit({Key? key}) => ProductCard(
    key: key,
    title: 'Full Outfit',
    price: '\$750',
    imagePath: 'assets/images/fulloutfit.jpg',
    rating: 4.7,
    reviewCount: 12,
    description: 'Complete outfit with matching accessories. Perfect for events.',
  );

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  bool isFavorite = false;

  void _navigateToDetails() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => productDetailsScreen(
          title: widget.title,
          price: widget.price,
          imagePath: widget.imagePath,
          rating: widget.rating ?? 4.5,
          reviewCount: widget.reviewCount ?? 20,
          description: widget.description ?? 'Premium quality product with excellent features.',
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _navigateToDetails,
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xffF8F7F7),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            widget.imageHeight != null
                ? SizedBox(
              height: widget.imageHeight,
              child: _buildImageWithStack(),
            )
                : Expanded(
              child: _buildImageWithStack(),
            ),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.title,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: Colors.black,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
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
                      padding: const EdgeInsets.all(2),
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
            ),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }

  Widget _buildImageWithStack() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
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
    );
  }
}