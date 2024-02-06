import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_weather_app/activity/Services/data_provider.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final data=ref.watch(weatherDataProvider);
    return Scaffold(

      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color(0xFF805BCA),
                Color(0xFF3A369D),
                Color(0xFF7758D1),
                // Colors.blue,
                // Colors.yellow,
              ],
            )
        ),
        child: data.when(
            data: (data){
              return Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height*0.2,
                    width: MediaQuery.of(context).size.width*0.5,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: 
                      NetworkImage("http://openweathermap.org/img/w/${data.weather[0].icon}.png",
                      ),
                        fit: BoxFit.fill
                      ),
                    ),

                  ),
                  Text("Name: ${data.name}"),
                  Text("Temperature:${data.main!.temp.toString()}"),
                  Text("Humidity:${data.main!.humidity.toString()}"),
                  Text("Weather:${data.weather![0].main}"),
                  Text(data.sys.country),
                  Text(data.weather[0].icon),
                  Text(data.name),
                  Image.network('http://openweathermap.org/img/w/${data.weather[0].icon}.png',),
                ],
              );
            },
            error: (err, s){
              print(err.toString());
            },
            loading: (){
              CircularProgressIndicator();
            }),
      ),
    );
  }
}
