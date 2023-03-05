import 'package:flutter/material.dart';

class PrizeInfoRow extends StatelessWidget {
  const PrizeInfoRow({super.key, required this.prizeRowText});

  final String prizeRowText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Text(prizeRowText),
    );
  }
}
