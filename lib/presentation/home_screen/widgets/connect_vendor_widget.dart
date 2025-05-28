import 'package:flutter/material.dart';

import '../../../domain/domain.dart';
import '../../presentation.dart';

class ConnectVendorWidget extends StatelessWidget {
  final List<Vendor> vendors;

  const ConnectVendorWidget({super.key, required this.vendors});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
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
                    const Text(
                      'View More',
                      style: TextStyle(color: Colors.grey),
                    ),
                    const SizedBox(width: 4),
                    const Icon(
                      Icons.arrow_forward_ios,
                      size: 16,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 160,
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
