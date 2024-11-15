import 'package:flutter/material.dart';

class PremiumPlanCard extends StatelessWidget {
  final String planName;
  final String price;
  final String description;
  final String buttonText;

  const PremiumPlanCard({
    super.key,
    required this.planName,
    required this.price,
    required this.description,
    required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Card(
          color: const Color.fromARGB(255, 27, 26, 26),
          elevation: 4,
          // semanticContainer: true,
          margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 13.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 2.0),
                decoration: const BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(5.0),
                      topLeft: Radius.circular(5.0)),
                ),
                child: Text(
                  price,
                  style: const TextStyle(fontWeight: FontWeight.w800),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 15.0,top: 10.0),
                child: Text(
                  planName,
                  style: const TextStyle(
                    color: Colors.deepPurple,
                    fontSize: 23,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 15.0,top: 5.0),
                child: Text(
                  price,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 5.0,horizontal: 15.0),
                color: const Color.fromARGB(20, 255, 255, 255),
                height: 1,
                width: double.infinity,
              ),
              const SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.only(left: 15.0),
                child: Text(
                  description,
                  style: const TextStyle(
                    color: Colors.white70,
                    fontSize: 14,
                  ),
                ),
              ),
              Center(
                child: Container(
                  padding: const EdgeInsets.only(top: 15.0,bottom: 20.0),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      // padding: const EdgeInsets.symmetric(vertical: 16.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(500),
                      ),
                      backgroundColor: Colors.deepPurple,
                    ),
                    child: Text(
                      buttonText,
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      // onTap: (){
      // },
    );
  }
}
