import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class MainHeadingStrip extends StatelessWidget {
  final Color _color;
  final String _text;
  MainHeadingStrip(this._color, this._text);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      color: _color,
      child: Text(
        _text,
        style: new TextStyle(
          fontWeight: FontWeight.w300,
          fontSize: 22,
          color: Colors.white,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}

class IconRow extends StatelessWidget {
  final Color _color;
  IconRow(this._color);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(Icons.account_circle, color: _color),
          Icon(Icons.add_a_photo, color: _color),
          Icon(Icons.cake, color: _color),
        ],
      ),
    );
  }
}

class ContentCard extends StatelessWidget {
  final String _text;
  ContentCard(this._text);

  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: EdgeInsets.all(5),
      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Container(
          padding: EdgeInsets.all(15),
          child: Text(
            _text,
            style: new TextStyle(
              fontWeight: FontWeight.w200,
              fontSize: 16,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}

class PlaceCard extends StatelessWidget {
  final String _imagePath, _placeName, _placeDescription;
  PlaceCard(this._imagePath, this._placeName, this._placeDescription);
  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: EdgeInsets.all(5),
      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(5),
              child: ListTile(
                leading: CircleAvatar(
                  radius: 30,
                  child: ClipOval(
                    child: Image.network(
                      _imagePath,
                    ),
                  ),
                ),
                title: Container(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 5),
                  child: Text(
                    _placeName,
                    style: new TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                ),
                subtitle: Text(
                  _placeDescription,
                  style: new TextStyle(
                    fontWeight: FontWeight.w200,
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MapZoomableImage extends StatelessWidget {
  final String _imagePath, _cityName;
  final Color _themeColor;
  MapZoomableImage(this._imagePath, this._cityName, this._themeColor);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(bottom: 45),
            child: Text(
              "Tap on the map for full screen zoomable view",
              style: new TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
                color: Colors.black,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MapZoomableImageScreen(
                      _imagePath, _cityName, _themeColor),
                ),
              );
            },
            child: Image.network(_imagePath),
          ),
        ],
      ),
    );
  }
}

class MapZoomableImageScreen extends StatelessWidget {
  final String _map, _cityName;
  final Color _themeColor;
  MapZoomableImageScreen(this._map, this._cityName, this._themeColor);
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_cityName + ' subway map'),
        backgroundColor: _themeColor,
      ),
      body: SizedBox.expand(
        child: Container(
          child: PhotoView(
            imageProvider: NetworkImage(_map),
            maxScale: 5.0,
          ),
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final Color _themeColor;
  final String _buttonText, _buttonRoute;

  CustomButton(this._themeColor, this._buttonText, this._buttonRoute);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(30, 0, 30, 20),
      child: new SizedBox(
        width: double.infinity,
        child: new RaisedButton(
          onPressed: () {
            Navigator.pushNamed(context, _buttonRoute);
          },
          textColor: Colors.white,
          color: _themeColor,
          padding: EdgeInsets.all(15),
          child: Text(_buttonText),
        ),
      ),
    );
  }
}

class GoBackButton extends StatelessWidget {
  final Color _themeColor;

  GoBackButton(this._themeColor);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(30, 0, 30, 20),
      child: new SizedBox(
        width: double.infinity,
        child: new RaisedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/');
          },
          textColor: Colors.white,
          color: _themeColor,
          padding: EdgeInsets.all(15),
          child: Text('Go Back'),
        ),
      ),
    );
  }
}

class CustomTabBarSection extends StatelessWidget {
  final List _data;
  CustomTabBarSection(this._data);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: false,
      child: Builder(
        builder: (BuildContext context) {
          return CustomScrollView(
            physics: BouncingScrollPhysics(),
            slivers: <Widget>[
              SliverOverlapInjector(
                handle:
                    NestedScrollView.sliverOverlapAbsorberHandleFor(context),
              ),
              SliverPadding(
                padding: const EdgeInsets.all(8.0),
                sliver: SliverList(
                  delegate: SliverChildListDelegate(
                    [
                      ..._data,
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
