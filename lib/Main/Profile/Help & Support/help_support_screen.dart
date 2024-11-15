import 'package:flutter/material.dart';
import 'support_details_screen.dart';
import 'support_item.dart';
import 'support_item_model.dart';

class HelpSupportScreen extends StatelessWidget {
  HelpSupportScreen({super.key});

  final List<SupportItem> supportItems = [
    SupportItem(
        title: "FAQs",
        description: "Find answers to common questions.",
        iconPath: "assets/icons/faq.png"),
    SupportItem(
        title: "Contact Us",
        description: "Get in touch with our support team.",
        iconPath: "assets/icons/contact.png"),
    SupportItem(
        title: "Terms & Conditions",
        description: "Read our terms and conditions.",
        iconPath: "assets/icons/terms.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          "Help & Support",
          style: TextStyle(
            color: Color.fromARGB(255, 121, 115, 114),
          ),
        ),
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
      ),
      body: ListView.builder(
        itemCount: supportItems.length,
        itemBuilder: (context, index) {
          return SupportItemWidget(
            supportItem: supportItems[index],
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      SupportDetailsScreen(supportItem: supportItems[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
