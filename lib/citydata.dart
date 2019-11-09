import 'package:sample_app_1/model.dart';

var cityData = {
  'london': {
    'name': 'London',
    'route': '/london',
    'header_image_path': 'path',
    'map_path': 'path',
    'info': 'London is a city in United Kingdom',
    'places': {
      {
        'place_name': 'Big Ben',
        'image_path': 'https://static.greatbigcanvas.com/images/square/panoramic-images/low-angle-view-of-a-clock-tower-big-ben-london-england,101825.jpg?max=128',
        'description': 'Big Ben is an attraction in London',
      },

      {
        'place_name': 'Big Ben test 2',
        'image_path': 'https://static.greatbigcanvas.com/images/square/panoramic-images/low-angle-view-of-a-clock-tower-big-ben-london-england,101825.jpg?max=128',
        'description': 'Big Ben is an attraction in London test 2',
      },

    },
  },
};

//----------------itarator functions ----------------//
/*List<String> getCityInfo(String x) {
  List<String> cityInfoList = new List<String>();
  for (var i in cityData[x]['info']) {
    cityInfoList.add(i);
  }
  //cityInfoList.add('a');
  return cityInfoList;
}*/

List<String> c = ['a', 'b', 'c'];


List<PlaceInfo> getPlacesInfo(String x) {
  List<PlaceInfo> placeInfoList = new List<PlaceInfo>();
  for (var i in cityData[x]['places']) {
    placeInfoList
        .add(new PlaceInfo(i['place_name'], i['description'], i['image_path']));
  }
  return placeInfoList;
}
//----------------itarator functions ----------------//

CityModel buildCity(String x) {
  return new CityModel(cityData[x]['name'], c, getPlacesInfo(x));
}

CityModel londons = buildCity('london');
