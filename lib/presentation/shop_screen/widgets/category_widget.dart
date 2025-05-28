import 'package:flutter/material.dart';

import '../../presentation.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
      color: AppColors.primary,
      child: Row(
        children: const [
          _CategoryText('Category'),
          _CategoryArrow(),
          _CategoryText('Agriculture'),
          _CategoryArrow(),
          _CategoryText('Nông Dược'),
        ],
      ),
    );
  }
}

class _CategoryText extends StatelessWidget {
  final String text;
  const _CategoryText(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 16.0,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    );
  }
}

class _CategoryArrow extends StatelessWidget {
  const _CategoryArrow();

  @override
  Widget build(BuildContext context) {
    return Icon(Icons.arrow_forward_ios, size: 20, color: Colors.white);
  }
}
