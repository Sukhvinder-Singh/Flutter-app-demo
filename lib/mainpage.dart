import 'package:flutter/material.dart';
import 'package:sample_app_1/components.dart';

List<ContentCard> getContentCards(List<String> content) {
  List<ContentCard> contentList = new List<ContentCard>();
  for (int i = 0; i < content.length; i++) {
    contentList.add(new ContentCard(content[i]));
  }
  return contentList;
}

class MainPage extends StatelessWidget {
  final Color _themeColor;
  final String _appBarText, _imagePath, _mainHeadingText;
  final List<String> _contents;
  MainPage(this._themeColor, this._appBarText, this._imagePath,
      this._mainHeadingText, this._contents);

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
                IconRow(_themeColor),
                ...getContentCards(_contents),
                CustomButton(
                    Color.fromRGBO(204, 0, 0, 1.0), 'London', '/london'),
                CustomButton(
                    Color.fromRGBO(0, 153, 255, 1.0), 'New York', '/newyork'),
                CustomButton(
                    Color.fromRGBO(230, 138, 0, 1.0), 'Paris', '/paris'),
                CustomButton(
                    Color.fromRGBO(153, 0, 153, 1.0), 'Tokyo', '/tokyo'),
                CustomButton(
                    Color.fromRGBO(153, 0, 153, 1.0), 'testpage', '/testpage'),
              ],
            ),
          ),
        ],
      ),

            drawer: Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Text("London"),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.pushNamed(context, '/london');
              },
            ),
            ListTile(
              title: Text("New York"),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.pushNamed(context, '/newyork');
              },
            ),
            ListTile(
              title: Text("Paris"),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.pushNamed(context, '/paris');
              },
            ),
            ListTile(
              title: Text("Tokyo"),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.pushNamed(context, '/tokyo');
              },
            ),
          ],
        ),
      ),
    );
  }
}
