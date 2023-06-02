import 'package:flutter/material.dart';
import 'package:nobel/theme/nobel_palette.dart';
import 'biography_container_row.dart';

class BiographyContainer extends StatelessWidget {
  const BiographyContainer(
      {super.key,
      required this.name,
      required this.birthDate,
      required this.birthPlace});

  final String name;
  final String birthDate;
  final String birthPlace;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: NobelPalette.nobelGrey,
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              decoration: const BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "BIOGRAPHY",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ),
          BiographyContainerRow(
              icon: const Icon(Icons.perm_identity), 
              rowText: name),
          BiographyContainerRow(
              icon: const Icon(Icons.date_range), 
              rowText: birthDate),
          BiographyContainerRow(
              icon: const Icon(Icons.place), 
              rowText: birthPlace),
        ],
      ),
    );
  }
}
