import 'package:flutter/material.dart';
import 'package:anatomic_app/widgets/custom_text.dart';

class CustomCard extends StatelessWidget {
  double mPaddingCard = 10.0;
  double mCustomWidth = 300;
  double mCustomHeight = 200;

  int mId;
  String mTitle;
  String mPathImage;
  Icon mIcon;
  Color mFilter = Colors.deepPurple;
  double mOpacity = 0.3;

  CustomCard(this.mId, this.mTitle, this.mPathImage,this.mIcon);
  CustomCard.vertical(this.mId, this.mTitle, this.mPathImage,this.mIcon, this.mFilter){
    this.mOpacity = 0.1;
    this.mCustomWidth = 170.0;
    this.mCustomHeight = 230.0;
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
      width: mCustomWidth,
      height: mCustomHeight,
      margin: EdgeInsets.only(left: 10.0, right: 10.0),
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
