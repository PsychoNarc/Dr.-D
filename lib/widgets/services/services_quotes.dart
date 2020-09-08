import 'package:flutter/material.dart';

class ServicesQuotes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 8, right: 20),
          child: Icon(Icons.question_answer),
        ),
        Text(
            'A Doctor is a person\nwho writes prescriptions\ntill the patient either dies\nor is cured by nature.\n   -- John Taylor'),
      ],
    );
  }
}
