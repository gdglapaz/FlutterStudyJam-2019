import 'package:flutter/material.dart';
import 'package:anatomic_app/widgets/custom_text.dart';

class CustomCard extends StatelessWidget {
  double mPaddingCard = 10.0;
  int mId;
  String mTitle;
  Icon mIcon;

  CustomCard(this.mId, this.mTitle, this.mIcon);

  @override
  Widget build(BuildContext context) {

    final mContainer = Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: Colors.deepPurple,
      ),
    );

    final mIndicators = Row(
      children: <Widget>[
        Icon(
          Icons.access_time,
          color: Colors.white,
        ),
        CustomText("15'", Colors.white, 16.0),
        Icon(
          Icons.timelapse,
          color: Colors.white,
        ),
        CustomText("6", Colors.white, 16.0)
      ],
    );

    final mFab = FloatingActionButton(
      heroTag: "mFab_$mId",
      onPressed: null,
      backgroundColor: Colors.black26,
      child: mIcon,
    );

    return Container(
      width: 300.0,
      height: 200.0,
      child: Stack(
        children: <Widget>[
          mContainer,
          Positioned(
            bottom: mPaddingCard,
            left: mPaddingCard,
            child: CustomText(mTitle, Colors.white, 22.0),
          ),
          Positioned(
            top: mPaddingCard,
            left: mPaddingCard,
            child: mIndicators,
          ),
          Positioned(
            right: mPaddingCard,
            top: mPaddingCard,
            child: mFab,
          )
        ],
      ),
    );
  }
}
