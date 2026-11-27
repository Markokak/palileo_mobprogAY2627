import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants.dart';

class Notification extends StatelessWidget {
  const Notification({
    super.key,
    required this.name,
    required this.post,
    required this.description,
  });

  final String name;
  final String post;
  final String description;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: ScreenUtil().setWidth(16),
        vertical: ScreenUtil().setHeight(12),
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: ScreenUtil().setWidth(23),
            backgroundColor: FB_SECONDARY,
            child: Icon(
              Icons.person,
              size: ScreenUtil().setSp(24),
              color: FB_TEXT_COLOR_WHITE,
            ),
          ),
          SizedBox(width: ScreenUtil().setWidth(10)),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    color: FB_DARK_PRIMARY,
                    fontSize: ScreenUtil().setSp(15),
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Text(
                  'Posted: $post',
                  style: TextStyle(
                    color: FB_DARKEST,
                    fontSize: ScreenUtil().setSp(13),
                  ),
                ),
                Text(
                  description,
                  style: TextStyle(
                    color: FB_BLUE_GRAY,
                    fontSize: ScreenUtil().setSp(12),
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            ),
          ),
          Icon(
            Icons.more_horiz,
            color: FB_BLUE_GRAY,
            size: ScreenUtil().setSp(20),
          ),
        ],
      ),
    );
  }
}
