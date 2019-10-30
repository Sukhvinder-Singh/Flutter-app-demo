import 'package:flutter/material.dart';
import 'package:sample_app_1/components.dart';

var _contents = [
  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
  'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim0 ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.'
];

List<ContentCard> getContentCards(var content) {
  List<ContentCard> contentList = new List<ContentCard>();
  for (int i = 0; i < content.length; i++) {
    contentList.add(new ContentCard(content[i]));
  }
  return contentList;
}

class PageTest extends StatelessWidget {
  final Color _themeColor;
  PageTest(this._themeColor);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(250, 250, 250, 1),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: Text('test'),
            backgroundColor: _themeColor,
            expandedHeight: 200,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/sky-blue.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                MainHeadingStrip(_themeColor, 'Lorem Ipsum Dolor Sit Amet'),
                IconRow(_themeColor),
                ...getContentCards(_contents),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
