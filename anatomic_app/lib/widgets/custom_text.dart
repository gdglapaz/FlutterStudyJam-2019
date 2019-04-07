import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  String mTitle = "";
  Color mColor;
  double mSize = 16;
  double mTopMargin = 0.0;
  double mBottomMargin = 0.0;
  double mLeftMaring = 0.0;
  double mRightMargin = 0.0;

  CustomText(this.mTitle, this.mColor, this.mSize);

  CustomText.margin(this.mTitle, this.mColor, this.mSize, this.mLeftMaring, this.mRightMargin, this.mTopMargin, this.mBottomMargin);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: mLeftMaring, right: mRightMargin, top: mTopMargin, bottom: mBottomMargin),
      child: Material(
          color: Colors.transparent,
          child: Text(
            mTitle,
            textDirection: TextDirection.ltr,
            style: TextStyle(
                color: mColor,
                fontSize: mSize,
                fontWeight: FontWeight.w500
            ),
          )
      ),
    );
  }
}
