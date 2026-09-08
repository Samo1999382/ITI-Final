import 'package:flutter/material.dart';
import 'package:test2/widgets/searchBar.dart';
import '../../widgets/ProductsWidgets.dart';

class SearchResultsPage extends StatefulWidget {
  final String query;

  const SearchResultsPage({super.key, required this.query});

  @override
  State<SearchResultsPage> createState() => _SearchResultsPageState();
}

class _SearchResultsPageState extends State<SearchResultsPage> {
  late TextEditingController _searchController;
  String _displayQuery = '';

  final Color focusedColor = const Color(0xFFF0EFF0);
  final Color activeColor = const Color(0xFFF8F7F7);
  final Color purpleColor = const Color(0xFF6055D8);

  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController(text: widget.query);
    _displayQuery = widget.query;
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: const Icon(Icons.arrow_back, color: Colors.black),
                    padding: EdgeInsets.zero,
                    constraints: const BoxConstraints(),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: searchBar(
                      searchController: _searchController,
                      onSubmitted: (value) {
                        setState(() {
                          _displayQuery = value;
                        });
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: TextSpan(
                      style: const TextStyle(fontSize: 14, color: Colors.grey),
                      children: [
                        const TextSpan(text: 'Results for " '),
                        TextSpan(
                          text: _displayQuery,
                          style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const TextSpan(text: ' "'),
                      ],
                    ),
                  ),
                  Text(
                    '6 Results Found',
                    style: TextStyle(
                      color: purpleColor,
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  childAspectRatio: 0.75,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  children: [
                    ProductCard.watch(),
                    ProductCard.nikeShoes(),
                    ProductCard.lgTv(),
                    ProductCard.airpods(),
                    ProductCard.jacket(),
                    ProductCard.hoodie(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}