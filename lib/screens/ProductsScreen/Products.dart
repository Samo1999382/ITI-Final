import 'package:flutter/material.dart';
import '../../widgets/ProductsWidgets.dart';


class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bool canPop = Navigator.canPop(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: canPop
            ? IconButton(
          icon: const Icon(Icons.arrow_back_ios_new, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        )
            : null,
        centerTitle: true,
        title: const Text(
          'Products',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: GridView.count(
          crossAxisCount: 2,
          childAspectRatio: 0.72,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          children: [
            ProductCard.watch(),
            ProductCard.nikeShoes(),
            ProductCard.lgTv(),
            ProductCard.airpods(),
            ProductCard.jacket(),
            ProductCard.hoodie(),
            ProductCard.shirt(),
            ProductCard.outfit()
          ],
        ),
      ),
    );
  }
}