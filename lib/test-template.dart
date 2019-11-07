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
                  expandedHeight: 200,
                  centerTitle: true,
                  backgroundColor: _themeColor,
                  forceElevated: innerBoxIsScrolled,
                  flexibleSpace: FlexibleSpaceBar(
                    background: Image.asset(
                      _imagePath,
                      fit: BoxFit.cover,
                    ),
                  ),
                  bottom: TabBar(
                    indicatorColor: Colors.white,
                    indicatorWeight: 4.0,
                    tabs: [
                      Tab(icon: Icon(Icons.info), text: "Information"),
                      Tab(icon: Icon(Icons.hotel), text: "Hotels"),
                      Tab(icon: Icon(Icons.subway), text: "Metro/Subway"),
                    ],
                  ),
                ),
              ),
            ];
          },
          body: TabBarView(
            children: <Widget>[
              /*SafeArea(
                top: false,
                bottom: false,
                child: Builder(
                  builder: (BuildContext context) {
                    return CustomScrollView(
                      slivers: <Widget>[
                        SliverOverlapInjector(
                          handle:
                              NestedScrollView.sliverOverlapAbsorberHandleFor(
                                  context),
                        ),
                        SliverPadding(
                          padding: const EdgeInsets.all(8.0),
                          sliver: SliverList(
                            delegate: SliverChildListDelegate(
                              [
                                //...getContentCards(_tabs),
                              ],
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
              SafeArea(
                top: false,
                bottom: false,
                child: Builder(
                  builder: (BuildContext context) {
                    return CustomScrollView(
                      slivers: <Widget>[
                        SliverOverlapInjector(
                          handle:
                              NestedScrollView.sliverOverlapAbsorberHandleFor(
                                  context),
                        ),
                        SliverPadding(
                          padding: const EdgeInsets.all(8.0),
                          sliver: SliverList(
                            delegate: SliverChildListDelegate(
                              [
                                // ...getContentCards(_tabs),
                              ],
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),*/

              _city.displayCityInfo(),
              _city.displayCityInfo(),
              _city.displayCityInfo(),
            ],
          ),
        ),
      ),
    );
  }
}
