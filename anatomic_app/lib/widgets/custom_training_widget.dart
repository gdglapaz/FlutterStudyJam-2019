import 'package:flutter/material.dart';
import 'package:anatomic_app/widgets/custom_text.dart';
import 'package:anatomic_app/screens/training_screen.dart';

class CustomTrainingWidget extends StatelessWidget {
  double mPaddingCard = 10.0;
  double mCustomWidth = 300;
  double mCustomHeight = 200;
  double mVerticalTopPadding = 10.0;
  double mVerticalTopTitlePadding = 10.0;
  double mCustomMargin = 10.0;
  double mBorderRadius = 15.0;

  int mId;
  String mTitle;
  String mPathImage;
  Icon mIcon;
  Color mFilter = Colors.deepPurple;
  double mOpacity = 0.3;
  double mTitleSize = 32.0;
  BuildContext mContext;

  CustomTrainingWidget.hero(this.mId, this.mTitle, this.mPathImage,this.mIcon, this.mFilter, this.mContext){
    this.mOpacity = 0.1;
    this.mCustomWidth = double.infinity;
    this.mCustomHeight = double.infinity;
    this.mVerticalTopPadding = 110.0;
    this.mTitleSize = 28.0;
    this.mVerticalTopTitlePadding = 30.0;
    this.mCustomMargin = 0.0;
    this.mBorderRadius = 0.0;
    this.mPaddingCard = 35.0;
  }

  @override
  Widget build(BuildContext context) {

    final mContainer = Container(
      decoration: BoxDecoration(
          color: mFilter,
          borderRadius: BorderRadius.circular(mBorderRadius),
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

    final mFab = Container(
      width: 50.0,
      height: 50.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50.0),
          color: Colors.black26
      ),
      child: mIcon,
    );

    return GestureDetector(
      onTap: (){
        if(mId > 0){
          Navigator.push(context, MaterialPageRoute(builder: (_){
            return TrainingScreen(mId, mTitle, mPathImage, mIcon, mFilter);
          }));
        }
      },
      child: Container(
          width: mCustomWidth,
          height: mCustomHeight,
          margin: EdgeInsets.only(left: mCustomMargin, right: mCustomMargin),
          child: Stack(
              children: <Widget>[
                mContainer,
                Positioned(
                  top: mVerticalTopTitlePadding + (mPaddingCard*3),
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
      ),
    );
  }
}
