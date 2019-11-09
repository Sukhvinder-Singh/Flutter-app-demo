import 'package:sample_app_1/components.dart';

/*class CityData {
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
*/

class PlaceInfo {
  String _placeName, _placeDescription, _imagePath;
  PlaceInfo(this._placeName, this._placeDescription, this._imagePath);
}

class CityModel {
  String _cityName, _cityRoute;
  List<String> _cityInfo; /*_mapPath*/
  List<PlaceInfo> _places;
  CityModel(this._cityName, this._cityInfo, this._places);
}

class CityController {
  CityModel _city;
  CityController(this._city);

  String getCityName() {
    return _city._cityName;
  }

  String getCityRoute() {
    return _city._cityRoute;
  }

  CustomTabBarSection displayCityInfo() {
    List<ContentCard> cityInfoList = new List<ContentCard>();
    for (int i = 0; i < _city._cityInfo.length; i++) {
      cityInfoList.add(new ContentCard(_city._cityInfo[i]));
    }
    return new CustomTabBarSection(cityInfoList);
  }

  CustomTabBarSection displayPlaceInfo() {
    /*List<PlaceInfo> placeInfoList = new List<PlaceInfo>();
    for (int i = 0; i < _city._places.length; i++) {
      placeInfoList.add(new PlaceInfo(_city._places[i]._imagePath,
          _city._places[i]._placeName, _city._places[i]._placeDescription));
    }*/

    List<PlaceCard> placeCards = new List<PlaceCard>();
    for (int i = 0; i < _city._places.length; i++) {
      placeCards.add(new PlaceCard(_city._places[i]._imagePath,
          _city._places[i]._placeName, _city._places[i]._placeDescription));
    }

    return new CustomTabBarSection(placeCards);
  }
}
