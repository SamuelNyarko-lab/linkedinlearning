import 'package:flutter/material.dart';

SizedBox verticalSpacing = const SizedBox(
  height: 20,
);

double deviceHeight(BuildContext context) =>
    MediaQuery.of(context).size.height;

double deviceWidth(BuildContext context) => MediaQuery.of(context).size.width;

EdgeInsets padding(double value) => EdgeInsets.all(value);

//double prefHeight(double value) => defaultHeight(BuildContext context)*value;
