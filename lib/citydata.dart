import 'package:sample_app_1/model.dart';

//City data
var cityData = {
  'london': {
    'name': 'London',
    'route': '/london',
    'header_image_path': 'path',
    'map_path': 'path',
    'info': {
      'London, the capital of England and the United Kingdom, is a 21st-century city with history stretching back to Roman times. At its centre stand the imposing Houses of Parliament, the iconic ‘Big Ben’ clock tower and Westminster Abbey, site of British monarch coronations. Across the Thames River, the London Eye observation wheel provides panoramic views of the South Bank cultural complex, and the entire city.',
      'The metro or London Underground is a system of electric trains which are in London, United Kingdom. It is the oldest underground railway in the world. It started running in 1863 as the Metropolitan Railway. After the opening the system was copied in many other cities, for example New York and Madrid. Even though it is called the Underground about half of it is above the ground. The "Tube" is a slang name for the London Underground, because the tunnels for some of the lines are round tubes running through the ground. The Underground has got 274 stations and over 408 km of track. From 2006–2007 over 1 billion passengers used the underground.',
    },
    'places': {
      {
        'place_name': 'Big Ben',
        'image_path':
            'https://static.greatbigcanvas.com/images/square/panoramic-images/low-angle-view-of-a-clock-tower-big-ben-london-england,101825.jpg?max=128',
        'description':
            'Big Ben is the nickname for the Great Bell of the clock at the north end of the Palace of Westminster in London and is usually extended to refer to both the clock and the clock tower. The official name of the tower in which Big Ben is located was originally the Clock Tower, but it was renamed Elizabeth Tower in 2012 to mark the Diamond Jubilee of Elizabeth II.',
      },
      {
        'place_name': 'London Eye',
        'image_path':
            'https://static.greatbigcanvas.com/images/square/getty-images/view-across-the-thames-of-the-london-eye-on-southbank-london-england,2082372.jpg?max=128',
        'description':
            'The London Eye is a cantilevered observation wheel on the South Bank of the River Thames in London. It is Europe\'s tallest cantilevered observation wheel, and is the most popular paid tourist attraction in the United Kingdom with over 3.75 million visitors annually, and has made many appearances in popular culture.',
      },
      {
        'place_name': 'Tower Bridge',
        'image_path':
            'https://static.greatbigcanvas.com/images/square/raygun/tower-bridge-reflecting-into-river-thames-london-england-uk-square,2521996.jpg?max=128',
        'description':
            'Tower Bridge is a combined bascule and suspension bridge in London, built between 1886 and 1894. The bridge crosses the River Thames close to the Tower of London and has become an iconic symbol of London. As a result, it is sometimes confused with London Bridge, about half a mile (0.8 km) upstream. Tower Bridge is one of five London bridges owned and maintained by the Bridge House Estates, a charitable trust overseen by the City of London Corporation. It is the only one of the trust\'s bridges not to connect the City of London directly to the Southwark bank, as its northern landfall is in Tower Hamlets.',
      },
      {
        'place_name': 'Buckingham Palace',
        'image_path':
            'https://media.xogrp.com/images/440e8bff-5740-49b7-9d1d-90d84bf33d95~rs_w.256?fallback=5fa481ef-43bb-43ae-aab3-665614c9d774',
        'description':
            'Buckingham Palace is the London residence and administrative headquarters of the monarch of the United Kingdom. Located in the City of Westminster, the palace is often at the centre of state occasions and royal hospitality. It has been a focal point for the British people at times of national rejoicing and mourning.',
      },
      {
        'place_name': 'Palace of Westminster',
        'image_path':
            'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSQ9MNp0IozjN-ii1IZQrFJNDTr1QDTVkGF5_78o7uJigtpDP_6',
        'description':
            'The Palace of Westminster serves as the meeting place of the House of Commons and the House of Lords, the two houses of the Parliament of the United Kingdom. Commonly known as the Houses of Parliament after its occupants, the Palace lies on the north bank of the River Thames in the City of Westminster, in central London, England.',
      },
    },
  },
};

//----------Iterator functions----------//
List<String> getCityInfoFromModel(String x) {
  List<String> cityInfoListInModel = new List<String>();
  for (var i in cityData[x]['info']) {
    cityInfoListInModel.add(i);
  }
  return cityInfoListInModel;
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
      cityData[x]['name'], getCityInfoFromModel(x), getPlacesInfoFromModel(x));
}

//----------City builds----------//
CityModel londons = buildCity('london');
