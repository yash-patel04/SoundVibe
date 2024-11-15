import 'package:flutter/material.dart';
import 'custom_button.dart';
import 'support_item_model.dart';

class SupportDetailsScreen extends StatelessWidget {
  final SupportItem supportItem;

  const SupportDetailsScreen({super.key, required this.supportItem});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: SizedBox(
          child: GestureDetector(
            child: const Icon(
              Icons.arrow_back_ios_new,
              color: Color.fromARGB(255, 121, 115, 114),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ),
        backgroundColor: Colors.black,
        title: Text(
          supportItem.title,
          style: const TextStyle(
            color: Color.fromARGB(255, 121, 115, 114),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(supportItem.iconPath, width: 100, height: 100),
            const SizedBox(height: 20),
            Text(
              supportItem.title,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 69, 66, 65),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              supportItem.description,
              style: const TextStyle(
                fontSize: 16,
                color: Color.fromARGB(255, 53, 51, 50),
              ),
            ),
            const Spacer(),
            CustomButton(
              text: "Contact Support",
              onPressed: () {
                // Action for contacting support
              },
            ),
          ],
        ),
      ),
    );
  }
}
