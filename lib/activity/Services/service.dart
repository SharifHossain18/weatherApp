import 'dart:convert';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_weather_app/activity/Models/model.dart';
import 'package:http/http.dart' as http;


class ApiServices{
  String url="https://api.openweathermap.org/data/2.5/weather?q=canada&appid=14fc3e6386dffbbed8185db504c34af5";

  getData()async{
    http.Response response=await http.get(Uri.parse(url));
    if(response.statusCode==200){
      return UserModel.fromJson(jsonDecode(response.body));
    }
    else{
      print("error");
    }
  }
}

final dataProvider=Provider((ref) => ApiServices());