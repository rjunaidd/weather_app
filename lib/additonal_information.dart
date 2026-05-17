import 'package:flutter/material.dart';

class AdditonalInformation extends StatelessWidget {
  const AdditonalInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(Icons.water_drop , size: 30,),
        SizedBox(height: 8,),
        Text("Humidity" , style: TextStyle(
          fontSize: 20,
        ),
        ),
        SizedBox(
          height: 8,
        ),
        Text("94" , style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold
        ),
        ),

      ],
    );
  }
}
