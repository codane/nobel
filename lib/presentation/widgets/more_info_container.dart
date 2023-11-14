import 'package:flutter/material.dart';
import 'package:nobel/common/theme/nobel_palette.dart';
import 'package:url_launcher/url_launcher.dart';

class MoreInfoContainer extends StatelessWidget {
  const MoreInfoContainer({super.key, required this.wikipediaUrl});

  final String wikipediaUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: NobelPalette.nobelGrey,
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
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
                  "MORE INFO",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: GestureDetector(
              child: Text(
                wikipediaUrl,
                style: const TextStyle(
                    fontSize: 15,
                    color: Colors.blueAccent,
                    decoration: TextDecoration.underline),
              ),
              onTap: () async {
                try {
                  await launchUrl(Uri.parse(wikipediaUrl),);
                } catch (e) {
                  debugPrint("Error: ${e.toString()}");
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
