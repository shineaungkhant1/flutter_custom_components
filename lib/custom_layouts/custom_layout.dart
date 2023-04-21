import 'package:flutter/material.dart';
import 'package:flutter_custom_components/utils/dimens.dart';

import '../utils/colors.dart';
import '../utils/strings.dart';

class CustomLayout extends StatelessWidget {
  const CustomLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        FootballPitchBackgroundView(),
        FormationView(),
      ],
    );
  }
}

class FormationView extends StatelessWidget {
  const FormationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: MARGIN_XXLARGE),
      child: Column(
        children: [
          GridView.count(
              crossAxisCount: 2,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            children: List.generate(2, (index) => PlayerView()),
          ),
          SizedBox(height: MediaQuery.of(context).size.height / 25),
          GridView.count(
              crossAxisCount: 4,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            children: List.generate(4, (index) => PlayerView()),
          ),
          SizedBox(height: MediaQuery.of(context).size.height / 15),
          GridView.count(
            crossAxisCount: 4,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            children: List.generate(4, (index) => PlayerView()),
          ),
          SizedBox(height: MediaQuery.of(context).size.height / 15),
          PlayerView(
            isGoalKeeper: true,
          )
        ],
      ),
    );
  }
}

class PlayerView extends StatelessWidget {

  final bool isGoalKeeper;


  PlayerView({this.isGoalKeeper = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Container(
          width: MARGIN_XLARGE,
          height: MARGIN_XLARGE,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              MARGIN_MEDIUM_2
            ),
            color: (isGoalKeeper) ? Colors.yellow : CHELESA_BLUE_COLOR,
          ),
        ),
      ),
    );
  }
}


class FootballPitchBackgroundView extends StatelessWidget {
  const FootballPitchBackgroundView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Image.asset(
        IMG_FOOTBALL_PITCH,
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.fill,
      ),
    );
  }
}



