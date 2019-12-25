import 'package:flutter/material.dart';

class Basic extends StatelessWidget {
  const Basic({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _image(),
            _title(),
            _icons(),
            _description(),
            _description(),
            _description(),
            _description(),
          ],
        ),
      ),
    );
  }

  Widget _image() {
    return Container(
      width: double.infinity,
      height: 300.0,
      child: Image.asset('assets/img/lakes.jpg', fit: BoxFit.cover),
    );
  }

  Widget _icons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _icon(Icons.call, 'CALL'),
        _icon(Icons.near_me, 'ROUTE'),
        _icon(Icons.share, 'SHARE')
      ],
    );
  }

  Widget _icon(IconData icon, String title) {
    return Column(
      children: <Widget>[
        Icon(icon, color: Colors.blue),
        SizedBox(height: 7.0),
        Text(title, style: TextStyle(color: Colors.blue))
      ],
    );
  }

  Widget _description() {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
        child: Text(
            'Id est laborum enim in proident. Esse culpa ad anim occaecat cupidatat labore aliqua ullamco ut sit veniam quis aliqua deserunt. Sint cillum ea eiusmod nostrud cupidatat. Laborum nostrud consequat Lorem sunt ad est sit cupidatat ad dolor amet esse. Eiusmod esse labore consequat cupidatat incididunt culpa laborum sit labore velit.',
            textAlign: TextAlign.justify));
  }
}

Widget _title() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
    child: Row(
      children: <Widget>[
        Expanded(
                  child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Lago',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
              Text(
                'Un lago para descansar',
                style: TextStyle(color: Colors.black45),
              )
            ],
          ),
        ),
        Icon(Icons.star, color: Colors.red),
        Text('41')
      ],
    ),
  );
}
