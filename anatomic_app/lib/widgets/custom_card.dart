import 'package:flutter/material.dart';
import 'package:anatomic_app/widgets/custom_text.dart';
import 'package:anatomic_app/screens/training_screen.dart';

class CustomCard extends StatelessWidget {
  double mPaddingCard = 10.0;
  double mCustomWidth = 300;
  double mCustomHeight = 200;
  double mVerticalTopPadding = 10.0;

  int mId;
  String mTitle;
  String mPathImage;
  Icon mIcon;
  Color mFilter = Colors.deepPurple;
  double mOpacity = 0.3;
  double mTitleSize = 32.0;

  CustomCard(this.mId, this.mTitle, this.mPathImage,this.mIcon);
  CustomCard.vertical(this.mId, this.mTitle, this.mPathImage,this.mIcon, this.mFilter){
    this.mOpacity = 0.1;
    this.mCustomWidth = 170.0;
    this.mCustomHeight = 230.0;
    this.mVerticalTopPadding = 180.0;
    this.mTitleSize = 22.0;
  }

  @override
  Widget build(BuildContext context) {

    final mContainer = Container(
      decoration: BoxDecoration(
        color: mFilter,
        borderRadius: BorderRadius.circular(15.0),
        image: DecorationImage(
            colorFilter: ColorFilter.mode(mFilter.withOpacity(mOpacity), BlendMode.dstATop),
            image: AssetImage(mPathImage),
            fit: BoxFit.cover
        )
      ),
    );

    final mIndicators = Row(
      children: <Widget>[
        Icon(
          Icons.access_time,
          color: Colors.white,
        ),
        CustomText.margin("15'", Colors.white, 16.0, 5.0, 15.0, 0.0, 0.0),
        Icon(
          Icons.timelapse,
          color: Colors.white,
        ),
        CustomText.margin("6", Colors.white, 16.0, 5.0, 15.0, 0.0, 0.0)
      ],
    );

    final mFab = FloatingActionButton(
      heroTag: "mFab_$mId",
      onPressed: null,
      backgroundColor: Colors.black26,
      child: mIcon,
    );

    return Container(
      width: mCustomWidth,
      height: mCustomHeight,
      margin: EdgeInsets.only(left: 10.0, right: 10.0),
      child: Hero(
          tag: "mHero_$mId",
          child: Stack(
            children: <Widget>[
              mContainer,
              Positioned(
                bottom: mPaddingCard,
                left: mPaddingCard,
                child: CustomText(mTitle, Colors.white, mTitleSize),
              ),
              Positioned(
                top: mVerticalTopPadding,
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
      )
    );
  }
}
