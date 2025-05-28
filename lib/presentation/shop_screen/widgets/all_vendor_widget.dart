import 'package:flutter/material.dart';
import 'package:community_material_icon/community_material_icon.dart';

import '../../presentation.dart';

class AllVendorWidget extends StatelessWidget {
  const AllVendorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
      child: Row(
        children: [
          Icon(
            CommunityMaterialIcons.home_city_outline,
            size: 30,
            color: AppColors.primary,
          ),
          const SizedBox(width: 10.0),
          const Text(
            'All Vendors',
            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
          ),
          const Spacer(),
          Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 20),
        ],
      ),
    );
  }
}
