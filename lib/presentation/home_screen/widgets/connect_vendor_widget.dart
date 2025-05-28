import 'package:flutter/material.dart';

import '../../../domain/domain.dart';
import '../../presentation.dart';

class ConnectVendorWidget extends StatelessWidget {
  final List<Vendor> vendors;

  const ConnectVendorWidget({super.key, required this.vendors});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'CONNECTED VENDORS',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: AppColors.primary,
                ),
              ),
              GestureDetector(
                onTap: () {
                  // Handle view more action
                },
                child: Row(
                  children: [
                    Text(
                      'View More',
                      style: TextStyle(color: Colors.grey[800]),
                    ),
                    SizedBox(width: 4),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 16,
                      color: Colors.grey[800],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 140,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: vendors.length,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            itemBuilder: (context, index) {
              return _buildVendorCard(vendors[index]);
            },
          ),
        ),
      ],
    );
  }

  Widget _buildVendorCard(Vendor vendor) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.network(vendor.imageUrl, fit: BoxFit.contain),
      ),
    );
  }
}
