import 'package:flutter/material.dart';

class searchBar extends StatelessWidget {
  final TextEditingController searchController;
  final Function(String)? onSubmitted;
  final Function(String)? onChanged;

  const searchBar({
    super.key,
    required this.searchController,
    this.onSubmitted,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44,
      decoration: BoxDecoration(
        color: const Color(0xFFF8F7F7),
        borderRadius: BorderRadius.circular(30),
        border: Border.all(
          color: const Color(0xFFF0EFF0),
          width: 1,
        ),
      ),
      child: Row(
        children: [
          const SizedBox(width: 16),
          const Icon(
            Icons.search,
            color: Colors.grey,
            size: 20,
          ),
          const SizedBox(width: 8),
          Expanded(
            child: TextField(
              controller: searchController,
              decoration: const InputDecoration(
                hintText: 'Search products...',
                hintStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                ),
                border: InputBorder.none,
                isDense: true,
                contentPadding: EdgeInsets.zero,
              ),
              style: const TextStyle(
                fontSize: 14,
                color: Colors.black,
              ),
              onSubmitted: onSubmitted,
              onChanged: onChanged,
              textInputAction: TextInputAction.search,
            ),
          ),
          if (searchController.text.isNotEmpty)
            IconButton(
              onPressed: () {
                searchController.clear();
                if (onSubmitted != null) {
                  onSubmitted!('');
                }
              },
              icon: const Icon(
                Icons.clear,
                color: Colors.grey,
                size: 18,
              ),
              padding: EdgeInsets.zero,
              constraints: const BoxConstraints(),
              splashRadius: 18,
            ),
          const SizedBox(width: 12),
        ],
      ),
    );
  }
}