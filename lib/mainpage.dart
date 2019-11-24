import 'package:flutter/material.dart';
import 'package:sample_app_1/components.dart';
import 'package:sample_app_1/model.dart';

class MainPage extends StatelessWidget {
  final Color _themeColor;
  final String _appBarText, _imagePath, _mainHeadingText;
  final List<String> _contents;
  final List<CityModel> _cityModels;
  MainPage(this._themeColor, this._appBarText, this._imagePath,
      this._mainHeadingText, this._contents, this._cityModels);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(250, 250, 250, 1),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: Text(
              _appBarText,
              style: new TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w800,
                color: Colors.white,
              ),
              textAlign: TextAlign.end,
            ),
            backgroundColor: _themeColor,
            expandedHeight: 200,
            pinned: true,
            floating: false,
            snap: false,
            centerTitle: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                _imagePath,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                MainHeadingStrip(_themeColor, _mainHeadingText),
                ...getContentCards(_contents),
                Container(
                  padding: EdgeInsets.only(bottom: 15),
                ),
                ...getRoutedButtons(_cityModels),
              ],
            ),
          ),
        ],
      ),
      endDrawer: Drawer(
        child: ListView(
          children: <Widget>[
            ...getDrawerItems(_cityModels),
          ],
        ),
      ),
    );
  }
}
