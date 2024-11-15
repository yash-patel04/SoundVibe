import 'package:flutter/material.dart';

class PremiumPricingOptions extends StatelessWidget {
  const PremiumPricingOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PricingOption(
            plan: 'Individual',
            price: '\$9.99/month',
            description: '1 account',
          ),
          PricingOption(
            plan: 'Duo',
            price: '\$12.99/month',
            description: '2 accounts',
          ),
          PricingOption(
            plan: 'Family',
            price: '\$14.99/month',
            description: 'Up to 6 accounts',
          ),
          PricingOption(
            plan: 'Student',
            price: '\$4.99/month',
            description: '1 account (with student verification)',
          ),
        ],
      ),
    );
  }
}

class PricingOption extends StatelessWidget {
  final String plan;
  final String price;
  final String description;

  const PricingOption({
    super.key,
    required this.plan,
    required this.price,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            plan,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            price,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
          Text(
            description,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.grey,
            ),
          ),
          const Divider(height: 30, thickness: 1),
        ],
      ),
    );
  }
}
