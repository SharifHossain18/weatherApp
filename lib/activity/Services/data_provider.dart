
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_weather_app/activity/Services/service.dart';

final weatherDataProvider=FutureProvider((ref) async {
  return ref.watch(dataProvider).getData();
});