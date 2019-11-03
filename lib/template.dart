import 'package:flutter/material.dart';
import 'package:sample_app_1/components.dart';

List<ContentCard> getContentCards(List<String> content) {
  List<ContentCard> contentList = new List<ContentCard>();
  for (int i = 0; i < content.length; i++) {
    contentList.add(new ContentCard(content[i]));
  }
  return contentList;
}

class PageTemplate extends StatelessWidget {
  final Color _themeColor;
  final String _appBarText, _imagePath, _mainHeadingText;
  final List<String> _contents;
  PageTemplate(this._themeColor, this._appBarText, this._imagePath,
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
                GoBackButton(_themeColor),
              ],
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[

            ListTile(
              title: Text("Home"),
              trailing: Icon(Icons.home),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.pushNamed(context, '/');
              },
            ),

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
