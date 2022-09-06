import 'package:flutter/widgets.dart';

double deviceHeight(BuildContext context) =>
    MediaQuery.of(context).size.height -
    (MediaQuery.of(context).padding.top +
        MediaQuery.of(context).padding.bottom);

double deviceWidth(BuildContext context) => MediaQuery.of(context).size.width;

double bottomPadding(BuildContext context) =>
    MediaQuery.of(context).padding.bottom;
double topPadding(BuildContext context) => MediaQuery.of(context).padding.top;
