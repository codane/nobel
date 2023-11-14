import 'package:flutter/material.dart';

class BiographyContainerRow extends StatelessWidget {
  const BiographyContainerRow ({super.key, required this.icon, required this.rowText});
  
  final Icon icon;
  final String rowText;
  

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          icon,
          Text(rowText)
        ],
      ),
    );
  }
}
