import 'package:flutter/material.dart';
import 'package:sample_app_1/citydata.dart';
import 'package:sample_app_1/model.dart';

//----------Iterator functions----------//
List<String> getCityInfoFromModel(String x) {
  List<String> cityInfoListInModel = new List<String>();
  for (var i in cityData[x]['info']) {
    cityInfoListInModel.add(i);
  }
  return cityInfoListInModel;
}

Color getCityThemeColorFromModel(String x) {
  String rgbCode = cityData[x]['themecolor'];
  List<String> splitString = rgbCode.split(',').toList();
  int r, g, b;
  r = int.parse(splitString[0].toString());
  g = int.parse(splitString[1].toString());
  b = int.parse(splitString[2].toString());
  return new Color.fromRGBO(r, g, b, 1);
}

List<PlaceInfo> getPlacesInfoFromModel(String x) {
  List<PlaceInfo> placeInfoListInModel = new List<PlaceInfo>();
  for (var i in cityData[x]['places']) {
    placeInfoListInModel
        .add(new PlaceInfo(i['place_name'], i['description'], i['image_path']));
  }
  return placeInfoListInModel;
}
//----------Iterator functions----------//

//Builder function
CityModel buildCity(String x) {
  return new CityModel(
      cityData[x]['name'],
      cityData[x]['header_image_path'],
      getCityThemeColorFromModel(x),
      getCityInfoFromModel(x),
      getPlacesInfoFromModel(x),
      cityData[x]['subway_map_path']);
}

//-----------City builds-------------//

List<CityModel> buildCityModels(var i) {
  List<CityModel> cityModels = new List<CityModel>();
  for (var x in i.keys) {
    cityModels.add(buildCity(x));
  }
  return cityModels;
}

List<CityModel> cityModelsFromModel = buildCityModels(cityData);
