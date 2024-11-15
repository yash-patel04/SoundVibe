import 'package:flutter/material.dart';
import '../custom_button.dart';
import 'terms_condition_model.dart';

class TermsConditionsScreen extends StatefulWidget {
  const TermsConditionsScreen({super.key});

  @override
  State<TermsConditionsScreen> createState() => _TermsConditionsScreenState();
}

class _TermsConditionsScreenState extends State<TermsConditionsScreen> {
  // var formate = DateFormat("yy-MM-dd");
  // String date = formate.format((2024-08-29) as DateTime).toString();

  final List<TermsCondition> termsList = [
    TermsCondition(
      title: "Introduction",
      content:
          "Welcome to SoundVibe! These Terms and Conditions govern your use of our mobile application and services. By accessing or using our App, you agree to be bound by these Terms. If you do not agree to these Terms, please do not use our App.",
    ),
    TermsCondition(
      title: "Acceptance of Terms",
      content:
          "By downloading, installing, or using the App, you agree to comply with and be bound by these Terms and our Privacy Policy. These Terms apply to all users of the App.",
    ),
    TermsCondition(
      title: "Changes to Terms",
      content:
          "We reserve the right to modify these Terms at any time. We will notify you of any changes by updating the   date. Your continued use of the App after changes have been posted constitutes your acceptance of the revised Terms.",
    ),
    TermsCondition(
      title: "User Accounts",
      content:
      "• You must create an account to use certain features of the App. \n• You are responsible for maintaining the confidentiality of your account information, including your password.\n• You agree to notify us immediately of any unauthorized use of your account.",
    ),
    TermsCondition(
      title: "Changes to Terms",
      content:
      "We reserve the right to modify these Terms at any time. We will notify you of any changes by updating the   date. Your continued use of the App after changes have been posted constitutes your acceptance of the revised Terms.",
    ),
    TermsCondition(
      title: "Changes to Terms",
      content:
      "We reserve the right to modify these Terms at any time. We will notify you of any changes by updating the   date. Your continued use of the App after changes have been posted constitutes your acceptance of the revised Terms.",
    ),
    TermsCondition(
      title: "Changes to Terms",
      content:
      "We reserve the right to modify these Terms at any time. We will notify you of any changes by updating the   date. Your continued use of the App after changes have been posted constitutes your acceptance of the revised Terms.",
    ),TermsCondition(
      title: "Changes to Terms",
      content:
      "We reserve the right to modify these Terms at any time. We will notify you of any changes by updating the   date. Your continued use of the App after changes have been posted constitutes your acceptance of the revised Terms.",
    ),
    TermsCondition(
      title: "Changes to Terms",
      content:
      "We reserve the right to modify these Terms at any time. We will notify you of any changes by updating the   date. Your continued use of the App after changes have been posted constitutes your acceptance of the revised Terms.",
    ),

    // Add more terms as necessary
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
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
        title: const Text("Terms & Conditions"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Last Updated: '),
            Expanded(
              child: ListView.builder(
                itemCount: termsList.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          termsList[index].title,
                          style: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          termsList[index].content,
                          style: const TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            CustomButton(
              text: "Accept",
              onPressed: () {
                // Handle acceptance logic
              },
            ),
            const SizedBox(height: 8),
            CustomButton(
              text: "Decline",
              onPressed: () {
                // Handle decline logic
              },
            ),
          ],
        ),
      ),
    );
  }
}
