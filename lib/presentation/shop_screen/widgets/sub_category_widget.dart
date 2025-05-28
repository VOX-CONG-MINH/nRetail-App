import 'package:flutter/material.dart';

import '../../../domain/domain.dart';

class SubCategoryWidget extends StatelessWidget {
  final List<SubCategory> subCategories;

  const SubCategoryWidget({super.key, required this.subCategories});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: subCategories.length,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        itemBuilder: (context, index) {
          return _buildSubCategoryCard(subCategories[index]);
        },
      ),
    );
  }

  Widget _buildSubCategoryCard(SubCategory subCategory) {
    return SizedBox(
      width: 120,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(
            subCategory.imageUrl,
            width: 80,
            height: 80,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 5),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Text(
              subCategory.name,
              textAlign: TextAlign.center,
              style: const TextStyle(fontWeight: FontWeight.bold),
              maxLines: 1,
            ),
          ),
        ],
      ),
    );
  }
}
