import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Terms & Conditions/terms_conditions_screen.dart';
import 'support_item_model.dart';

class SupportItemWidget extends StatelessWidget {
  final SupportItem supportItem;
  final VoidCallback onTap;

  const SupportItemWidget(
      {super.key, required this.supportItem, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(255, 27, 26, 26),
      child: ListTile(
        leading: Image.asset(supportItem.iconPath, width: 40, height: 40),
        title: Text(
          supportItem.title,
          style: const TextStyle(
            color: Color.fromARGB(255, 69, 66, 65),
          ),
        ),
        subtitle: Text(
          supportItem.description,
          style: const TextStyle(
            color: Color.fromARGB(255, 53, 51, 50),
          ),
        ),
        trailing: const Icon(
          Icons.arrow_forward_ios,
          color: Color.fromARGB(255, 121, 115, 114),
        ),
        onTap: (){
          if(supportItem.title == 'Terms & Conditions'){
            Navigator.push(
              context,
              CupertinoPageRoute(builder: (context) => const TermsConditionsScreen()),
            );
          }
        },
      ),
    );
  }
}
