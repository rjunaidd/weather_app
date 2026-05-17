import 'package:flutter/material.dart';

class HourlyForecast extends StatelessWidget {
  const HourlyForecast({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.teal,
      elevation: 6,
      child: Container(
        width: 100,
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            Text("03:00" ,style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
            ),
            ),
            SizedBox(
              height: 2,
            ),
            Icon(Icons.cloud ,
              size: 35,
            ),
            SizedBox(
              height: 2,
            ),
            Text("301.17" , style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold
            ),
            ),
          ],
        ),
      ),
    );
  }
}
