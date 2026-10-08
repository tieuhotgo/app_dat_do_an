import 'package:flutter/material.dart';

import '../models/category_model.dart';

class CategoryWidget extends StatelessWidget {
  final CategoryModel category;

  const CategoryWidget({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 68,
          height: 68,
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: const Color(0xFFF3EFEA),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Image.asset(category.imagePath, fit: BoxFit.contain),
        ),
        const SizedBox(height: 8),
        Text(
          category.title,
          style: const TextStyle(
            color: Color(0xFF292824),
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
