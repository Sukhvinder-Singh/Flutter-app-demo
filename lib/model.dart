import 'package:sample_app_1/components.dart';

//----------City model----------//
class PlaceInfo {
  String _placeName, _placeDescription, _imagePath;
  PlaceInfo(this._placeName, this._placeDescription, this._imagePath);
}

class CityModel {
  String _cityName, _citySubwayMap;
  List<String> _cityInfo;
  List<PlaceInfo> _places;
  CityModel(this._cityName, this._cityInfo, this._places, this._citySubwayMap);
}
//----------City model----------//

//----------City controller----------//
class CityController {
  CityModel _city;
  CityController(this._city);

  //----------Accessor functions----------//
  String getCityName() {
    return _city._cityName;
  }

  String getSubwayMap() {
    return _city._citySubwayMap;
  }

  /*String getCityRoute() {
    return _city._cityRoute;
  }*/

  CustomTabBarSection displayCityInfo() {
    List<ContentCard> cityInfoList = new List<ContentCard>();
    for (int i = 0; i < _city._cityInfo.length; i++) {
      cityInfoList.add(new ContentCard(_city._cityInfo[i]));
    }
    return new CustomTabBarSection(cityInfoList);
  }

  CustomTabBarSection displayPlaceInfo() {
    List<PlaceCard> placeCards = new List<PlaceCard>();
    for (int i = 0; i < _city._places.length; i++) {
      placeCards.add(new PlaceCard(_city._places[i]._imagePath,
          _city._places[i]._placeName, _city._places[i]._placeDescription));
    }

    return new CustomTabBarSection(placeCards);
  }

  CustomTabBarSection displayCitySubwayMap() {
    List<MapZoomableImage> mapList = new List<MapZoomableImage>();
    MapZoomableImage subwayMap = new MapZoomableImage(getSubwayMap());
    mapList.add(subwayMap);
    return new CustomTabBarSection(mapList);
  }

  //----------Accessor functions----------//
}
//----------City controller----------//
