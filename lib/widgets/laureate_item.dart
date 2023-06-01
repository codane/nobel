import 'package:flutter/material.dart';

class LaureateItem extends StatelessWidget {
  const LaureateItem(
      {super.key, required this.laureateName, required this.yearAwarded});

  final String laureateName;
  final String yearAwarded;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Material(
        elevation: 0,
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        child: Container(
          decoration: const BoxDecoration(
            color: Color(0xffD8DAD3),
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10, left: 10),
                      child: Text(
                        laureateName,
                        style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(yearAwarded),
                    ),
                  ],
                ),
              ),
              Container(
                height: 50,
                width: 50,
                decoration: const BoxDecoration(
                    color: Color(0xffD8DAD3), 
                    shape: BoxShape.circle),
                child: const Icon(Icons.arrow_forward),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
