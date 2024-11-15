import 'package:flutter/material.dart';

import 'plan_card.dart';
import 'premium_features_list.dart';
import 'premium_header.dart';

class PremiumScreen extends StatelessWidget {
  const PremiumScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: height * 0.09),
            const PremiumHeader(),
            const Padding(
              padding: EdgeInsets.only(left: 16.0),
              child: Text(
                'Why Join Premium?',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const PremiumFeatureList(),
            const Padding(
              padding: EdgeInsets.only(left: 16.0, top: 25.0),
              child: Text(
                'Available plans',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const PremiumPlanCard(
              planName: 'Individual',
              price: '₹119/month',
              description: '• 1 account\n• ad-free music\n• offline listening.',
              buttonText: 'Get Premium Individual',
            ),
            const PremiumPlanCard(
              planName: 'Duo',
              price: '₹149/month',
              description:
                  '• 2 accounts\n• ad-free music\n• offline listening.',
              buttonText: 'Get Premium Duo',
            ),
            const PremiumPlanCard(
              planName: 'Family',
              price: '₹179/month',
              description:
                  '• Up to 6 accounts\n• ad-free music\n• offline listening\n• explicit filter.',
              buttonText: 'Get Premium Family',
            ),
            const PremiumPlanCard(
              planName: 'Student',
              price: '₹59/month',
              description: '• 1 account\n• ad-free music\n• offline listening.',
              buttonText: 'Get Premium Student',
            ),
            SizedBox(height: height * 0.09),
          ],
        ),
      ),
    );
  }
}
