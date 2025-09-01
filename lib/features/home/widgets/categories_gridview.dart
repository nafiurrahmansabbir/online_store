import 'package:flutter/material.dart';

import '../../../common/utils/app_colors.dart';

class CategoriesGridview extends StatelessWidget {
  final List<Map<String, dynamic>> categories = [
    {'name': 'Electronics', 'icon': Icons.tv},
    {'name': 'Food', 'icon': Icons.fastfood},
    {'name': 'Fashion', 'icon': Icons.diamond},
    {'name': 'Furniture', 'icon': Icons.bed},
    {'name': 'Books', 'icon': Icons.book},
    {'name': 'Gaming', 'icon': Icons.games},
    {'name': 'Sports', 'icon': Icons.sports_soccer},
    {'name': 'Beauty', 'icon': Icons.face},
    {'name': 'Pets', 'icon': Icons.pets},
    {'name': 'Garden', 'icon': Icons.yard},
  ];

  CategoriesGridview({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 110,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: GridView.builder(
              scrollDirection: Axis.horizontal, // This makes it scroll horizontally
              padding: EdgeInsets.zero,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1, // Number of rows in a horizontal grid
                crossAxisSpacing: 10,
                mainAxisSpacing: 2,
                childAspectRatio: 1.1,
              ),
              itemCount: categories.length,
              itemBuilder: (context, index) {
                return _buildCategoryItem(
                  categories[index]['name'] as String,
                  categories[index]['icon'] as IconData,
                );
              },
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildCategoryItem(String name, IconData icon) {
    return Column(
      children: [
        Container(
          height: 70,
          width: 70,
          decoration: BoxDecoration(
            color: AppColors.themeColor.withOpacity(0.1),
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Icon(
            icon,
            size: 40,
            color: AppColors.themeColor,
          ),
        ),
        SizedBox(height: 8),
        Text(name, textAlign: TextAlign.center),
      ],
    );
  }
}