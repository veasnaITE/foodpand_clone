
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FoodBanner extends StatelessWidget {
  const FoodBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: RichText(text: TextSpan(
                children: [
                  TextSpan(text: "Food Delivery\n",style:
                  TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.black87
                  )),
                  TextSpan(text: "Order food you love",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black54
                      )),
                ]
            )),
          ),
          Align(
              alignment: Alignment.bottomRight,
              child: Image.asset('assets/images/image 8.png'))
        ],
      ),
    );
  }
}