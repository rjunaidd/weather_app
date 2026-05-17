


import 'package:flutter/material.dart';
import 'package:weather_app/additonal_information.dart';
import 'package:weather_app/hourly_forecast.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          backgroundColor: Colors.blueGrey.shade900,
          title: const Text(
            "Weather App",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          actions: [
            InkWell(
              onTap: () {
                print('Refresh');
              },
              child: Icon(Icons.refresh),
            ),
          ],
        ),

        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
           //  mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 240,
                child: Card(
                  color: Colors.teal,
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  shadowColor: Colors.white,
                  child: ClipRect(
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            "300.67° F",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 32,
                                color: Colors.white
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Icon(
                            Icons.cloud,
                            size: 50,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text("Rain" ,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 8),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Weather Forecast" , style:TextStyle(
                fontSize: 24,
                  fontWeight: FontWeight.bold
                ) ,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    HourlyForecast(time: "09:12", temperature: "301.12", icon: Icons.cloud),
                    HourlyForecast(time: "11:02", temperature: "350.12", icon: Icons.sunny),
                    HourlyForecast(time: "16:40", temperature: "225.3", icon: Icons.snowing),
                    HourlyForecast(time: "02:12", temperature: "308.2", icon: Icons.thunderstorm_outlined),
                    HourlyForecast(time: "06:12", temperature: "280.7", icon: Icons.grain),

                    SizedBox(
                      width: 100,
                    ),
                  ],
                ),
              ),

              SizedBox(height: 10),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Additional Information" , style:TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold
                ) ,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              SingleChildScrollView(
                child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    AdditonalInformation(icon: Icons.water_drop, label: "Humditiy", value: "91"),
                    AdditonalInformation(icon: Icons.air, label: "Wind Speed", value: "10"),
                   AdditonalInformation(icon: Icons.beach_access, label: "Pressure", value: "100")
                
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
