import 'package:flutter/material.dart';

class UserHistory extends StatelessWidget {
  const UserHistory({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Icon(
                Icons.history,
                color: Colors.blue[700],
              ),
              SizedBox(width: 4),
              Text(
                'History',
                style: TextStyle(color: Colors.blue[700]),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 8, bottom: 8),
                child: SizedBox(width: 100, child: Text('Apr 1, 2020')),
              ),
              Flexible(child: Text('Regular Checkup')),
            ],
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 8, bottom: 8),
                child: SizedBox(width: 100, child: Text('Jan 2, 2020')),
              ),
              Flexible(child: Text('Psychiactric Counseling')),
            ],
          )
        ],
      ),
    );
  }
}
