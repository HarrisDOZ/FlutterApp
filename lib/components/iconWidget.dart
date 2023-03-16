import 'package:flutter/material.dart';

class IconWidget extends StatelessWidget {
  final IconData icon;
  final String name;
  final double size;
  final Color color;
  final Function onTap;

  IconWidget({
    required this.icon,
    required this.name,
    this.size = 24.0,
    this.color = Colors.black,
    required String title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      
      child: Row(
        children: [
          Icon(
            icon,
            size: 32,
            color: Colors.black,
          ),
          SizedBox(
            width: 8.0,
          ),
          Text(
            name,
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ],
      ),
      
    );
  }
}
