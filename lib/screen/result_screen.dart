import 'package:first_app/theme/app_colour.dart';
import 'package:first_app/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.result});
  final double result;

  String get healthiness {
    String healthinessString;
    if (result < 18.5) {
      healthinessString = 'Underweight';
    } else if (result <= 24.9) {
      healthinessString = 'Normal';
    } else if (result <= 29.9) {
      healthinessString = 'Overweight';
    } else if (result <= 34.9) {
      healthinessString = 'Obese';
    } else {
      healthinessString = 'Extremely Obese';
    }
    
    return healthinessString;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar:CustomAppBar(),
      body: Column(

        children: [
          SizedBox(height: 20),
          Text(
            "your result",
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          Expanded(
            child: Container(

              width: 319,
              height: 503,
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(50

              ),
              decoration: BoxDecoration(
                color: Color(0XFF333244),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                children: [
                  Text(
                    healthiness,
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: AppColors.greenColor,
                    ),
                  ),
                  Text(
                    result.toStringAsFixed(1),
                    style: TextStyle(
                      fontSize: 80,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "Your weight is $healthiness",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0XFF8B8C9E),
                    ),
                  )
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              height: 100,
              alignment: Alignment.center,
              color: Color(0XFFE83D67),
              child: Text(
                "Re-Calculate",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
