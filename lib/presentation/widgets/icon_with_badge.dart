import 'package:flutter/material.dart';

class IconWithBadge extends StatelessWidget {
  final int count;
  final IconData icon;
  final Color iconColor;
  final VoidCallback? onPressed;

  const IconWithBadge({
    super.key,
    required this.count,
    required this.icon,
    this.iconColor = Colors.white,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(icon: Icon(icon, color: iconColor), onPressed: onPressed),
        if (count > 0)
          Positioned(
            right: 8,
            top: 8,
            child: Container(
              padding: const EdgeInsets.all(4),
              decoration: const BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
              ),
              child: Text(
                '$count',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
      ],
    );
  }
}
