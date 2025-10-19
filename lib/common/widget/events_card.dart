import 'package:evently/common/theme/app_colors.dart';
import 'package:evently/common/widget/custom_text_form_field.dart';
import 'package:evently/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EventsCard extends StatelessWidget {
  const EventsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: Assets.images.birthday.provider(),
          fit: BoxFit.fill,
        ),
        borderRadius: BorderRadius.circular(16.r),
      ),
      padding: EdgeInsets.all(8.r),
      height: 203.h,
      margin: EdgeInsets.symmetric(vertical: 8.h, horizontal: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 49.h,
            width: 43.w,
            decoration: BoxDecoration(
              color: Theme.of(context).scaffoldBackgroundColor,
              borderRadius: BorderRadius.circular(8.r),
            ),
            padding: EdgeInsets.all(8),

            child: Column(
              children: [
                Text(
                  '21',
                  style: TextStyle(
                    color: AppColors.mainColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 16.sp,
                  ),
                ),
                Text(
                  'Nov',
                  style: TextStyle(
                    color: AppColors.mainColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 12.sp,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Container(
            height: 40.h,
            padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 10.w),
            decoration: BoxDecoration(
              color: Theme.of(context).scaffoldBackgroundColor,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(crossAxisAlignment: CrossAxisAlignment.center,children: [
              Text('This is a Birthday Party ',style: Theme.of(context).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.bold)),
              Spacer(),
              IconButton(padding: EdgeInsets.all(0),iconSize: 24.r,onPressed:() {
                
              }, icon: Icon(Icons.favorite,color: AppColors.mainColor)),
            ],),
          ),
        ],
      ),
    );
  }
}
