import 'package:flutter/material.dart';

class PremiumFeatureList extends StatelessWidget {
  const PremiumFeatureList({super.key});

  final List<String> features = const [
    'Ad-free music listening',
    'Download music and listen offline',
    'High-quality audio',
    'Unlimited skips',
    'Play any song on demand',
  ];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return SizedBox(
      width: width,
      child: Card(
        color: const Color.fromARGB(255, 27, 26, 26),
        elevation: 4,
        // semanticContainer: true,
        margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 13.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: features.map((feature) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Row(
                  children: [
                    const Icon(Icons.check_circle, color: Colors.deepPurple),
                    SizedBox(width: width * 0.01),
                    Flexible(
                      child: Text(
                        feature,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
