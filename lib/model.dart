import 'package:sample_app_1/components.dart';

class CityData {
  String _cityName, _cityRoute;
  List<String> _cityInfo, _touristInfo;

  CityData(this._cityName, this._cityRoute, this._cityInfo, this._touristInfo);

  //Accessor functions

  String getCityName() {
    return _cityName;
  }

  String getCityRoute() {
    return _cityRoute;
  }

  List<String> getCityInfo() {
    return _cityInfo;
  }

  List<String> getTouristInfo() {
    return _touristInfo;
  }
}

class CityController {
  CityData _city;

  CityController(this._city);

  //Accessor functions

  List<ContentCard> getCityInfoList() {
    List<ContentCard> cityInfoList = new List<ContentCard>();
    for (int i = 0; i < this._city.getCityInfo().length; i++) {
      cityInfoList.add(new ContentCard(_city.getCityInfo()[i]));
    }
    return cityInfoList;
  }

  CustomTabBarSection displayCityInfo() {
    return new CustomTabBarSection(this.getCityInfoList());
  }
}
