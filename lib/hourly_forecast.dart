import 'package:flutter/material.dart';

class HourlyForecast extends StatelessWidget {

  final String time;
  final String temperature;
  final IconData icon ;
  const HourlyForecast({
    super.key,

    required this.time,
    required this.temperature,
    required this.icon
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blueGrey.shade900,
      elevation: 6,
      child: Container(
        width: 100,
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            Text(time ,style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
            ),
            ),
            SizedBox(
              height: 2,
            ),
            Icon(icon,
              size: 35,
            ),
            SizedBox(
              height: 2,
            ),
            Text(temperature , style: TextStyle(
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
