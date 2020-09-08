import 'package:flutter/material.dart';
import 'package:appt_app/styles.dart';
import 'package:appt_app/models/app_state_model.dart';
import 'package:appt_app/models/staff_model.dart';
import 'package:provider/provider.dart';
import 'package:carousel_slider/carousel_slider.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(6.0),
          child: Image.asset(
            'assets/images/doctor.png',
            semanticLabel: 'Dr. D',
          ),
        ),
        Expanded(
          child: ListView(
            children: <Widget>[
              Text(
                'Welcome to Dr. D appointment service!',
                textAlign: TextAlign.center,
                style: Styles.sectionTitleText,
              ),
              SizedBox(height: 6),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    '"Let\'s make you',
                    textAlign: TextAlign.center,
                    style: Styles.sectionTitleText,
                  ),
                  // Padding(
                  //   padding: const EdgeInsets.only(left: 8, right: 8),
                  //   child: Icon(Icons.content_cut),
                  // ),
                  Text(
                    ' an Appointment"',
                    textAlign: TextAlign.center,
                    style: Styles.sectionTitleText,
                  ),
                ],
              ),
              SizedBox(height: 18),
              LandingPageBody(),
            ],
          ),
        ),
      ],
    );
  }
}

class LandingPageBody extends StatelessWidget {
  const LandingPageBody({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<AppStateModel>(
      builder: (context, model, child) {
        final List<Staff> staffData = model.getStaff();
        return Container(
          padding: EdgeInsets.only(top: 10),
          child: CarouselSlider(
            height: MediaQuery.of(context).size.height / 3,
            viewportFraction: .9,
            enlargeCenterPage: true,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 2),
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            items: staffData.map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    child: Image.asset(i.imageAsset),
                  );
                },
              );
            }).toList(),
          ),
        );
      },
    );
  }
}
