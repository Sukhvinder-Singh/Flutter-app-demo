import 'package:flutter/material.dart';

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
    return Container(
      padding: EdgeInsets.fromLTRB(15, 0, 15, 20),
      child: Container(
        padding: EdgeInsets.all(15),
        decoration: new BoxDecoration(
          color: Colors.white,
          borderRadius: new BorderRadius.all(const Radius.circular(10)),
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.15),
              offset: new Offset(3.0, 3.0),
              blurRadius: 10.0,
            ),
          ],
        ),
        child: Text(
          _text,
          style: new TextStyle(
            fontWeight: FontWeight.w200,
            fontSize: 16,
            color: Colors.black,
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
            Navigator.pop(context);
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