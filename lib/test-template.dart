import 'package:flutter/material.dart';
import 'package:sample_app_1/model.dart';

class TestTemplate extends StatelessWidget {
  final CityController _city;
  TestTemplate(this._city);

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
                  title: Text(_city.getCityName()),
                  pinned: true,
                  expandedHeight: 350,
                  centerTitle: true,
                  backgroundColor: _city.getCityPageThemeColor(),
                  forceElevated: innerBoxIsScrolled,
                  flexibleSpace: FlexibleSpaceBar(
                    background: Image.asset(
                      _city.getCityHeroImage(),
                      fit: BoxFit.cover,
                    ),
                  ),
                  bottom: PreferredSize(
                    preferredSize: new Size.fromHeight(85),
                    child: Container(
                      color: _city.getCityPageThemeColor(),
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
            physics: BouncingScrollPhysics(),
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
