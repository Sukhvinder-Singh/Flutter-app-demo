import 'package:flutter/material.dart';
import 'package:sample_app_1/model.dart';

class TestTemplate extends StatelessWidget {
  final Color _themeColor;
  final String _appBarText, _imagePath;
  final CityController _city;
  TestTemplate(this._themeColor, this._appBarText, this._imagePath, this._city);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(250, 250, 250, 1),
      body: DefaultTabController(
        length: 3,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverOverlapAbsorber(
                handle:
                    NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                child: SliverAppBar(
                  title: Text(_appBarText), // This is the title in the app bar.
                  pinned: true,
                  expandedHeight: 350,
                  centerTitle: true,
                  backgroundColor: _themeColor,
                  forceElevated: innerBoxIsScrolled,
                  flexibleSpace: FlexibleSpaceBar(
                    background: Image.asset(
                      _imagePath,
                      fit: BoxFit.cover,
                    ),
                  ),

                  bottom: PreferredSize(
                    preferredSize: new Size.fromHeight(85),
                    child: Container(
                      color: _themeColor,
                      child: TabBar(
                        indicatorColor: Colors.white,
                        indicatorWeight: 5.0,
                        tabs: [
                          Tab(icon: Icon(Icons.info), text: "Information"),
                          Tab(
                              icon: Icon(Icons.location_on),
                              text: "Tourist places"),
                          Tab(icon: Icon(Icons.subway), text: "Metro/Subway"),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ];
          },
          body: TabBarView(
            children: <Widget>[
              _city.displayCityInfo(),
              _city.displayPlaceInfo(),
              _city.displayCitySubwayMap(),
            ],
          ),
        ),
      ),
    );
  }
}
