import 'dart:convert';

import 'package:aaviss_motors/Models.dart/brands_model/brands_model.dart';
import 'package:aaviss_motors/Models.dart/search_model/search_model.dart';
import 'package:aaviss_motors/Models.dart/vehicle_models/datum.dart';

import 'package:http/http.dart' as http;

var link =
    'https://aavissmotors.creatudevelopers.com.np/api/v1/get-brands?limit=999';

var links =
    'https://aavissmotors.creatudevelopers.com.np/api/v1/get-vehicle-names';

var searchlink =
    'https://aavissmotors.creatudevelopers.com.np/api/v1/search-vehicle';

Future<BrandsModel?> getData() async {
  try {
    var res = await http.get(Uri.parse(link));

    if (res.statusCode == 200) {
      return BrandsModel.fromJson(jsonDecode(res.body)['data']['brands']);
    }
    return null;
  } catch (e) {
    print(e);
  }
}

Future<VehicleModels?> getVehicle() async {
  try {
    var res = await http.get(Uri.parse(links));

    print(jsonDecode(res.body)["data"]["vehicle_names"]);
    if (res.statusCode == 200) {
      print(res.body);

      return VehicleModels.fromJson(
          jsonDecode(res.body)['data']['vehicle_names']);
    }
    return null;
  } catch (e) {
    print(e);
  }
}

Future<SearchModel?> searchVehicle() async {
  try {
    var res = await http.get(Uri.parse(searchlink));

    print(jsonDecode(res.body)["data"]["vehicle_names"]);
    if (res.statusCode == 200) {
      print(res.body);

      return SearchModel.fromJson(jsonDecode(res.body)['data']['vehicle']);
    }
    return null;
  } catch (e) {
    print(e);
  }
}
