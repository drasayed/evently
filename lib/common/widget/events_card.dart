import 'package:evently/common/theme/app_colors.dart';
import 'package:evently/common/widget/custom_text_form_field.dart';
import 'package:evently/models/category_model.dart';
import 'package:evently/models/events_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EventsCard extends StatelessWidget {
  const EventsCard({super.key, required this.eventModel});
  final EventsModel eventModel;
  @override
  Widget build(BuildContext context) {
    String catImage=CategoryModel.categories.firstWhere((element)=>element.catId==eventModel.catId).catImagePath!;
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.mainColor),
        image: DecorationImage(
          image: AssetImage(catImage),
          fit: BoxFit.fill,
        ),
        borderRadius: BorderRadius.circular(16.r),
      ),
      padding: EdgeInsets.all(8.r),
      height: 204.h,
      margin: EdgeInsets.symmetric(vertical: 8.h, horizontal: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 61.h,
            width: 61.w,
            decoration: BoxDecoration(
              color: Theme.of(context).scaffoldBackgroundColor,
              borderRadius: BorderRadius.circular(8.r),
            ),
            padding: EdgeInsets.all(7),

            child: Column(
              children: [
                Text(
                  eventModel.date,
                  style: TextStyle(
                    color: AppColors.mainColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 16.sp,

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
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  eventModel.title,
                  style: Theme.of(
                    context,
                  ).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.bold),
                ),
                Spacer(),
                IconButton(
                  padding: EdgeInsets.all(0),
                  iconSize: 24.r,
                  onPressed: () {},
                  icon: eventModel.isFav
                      ? Icon(Icons.favorite, color: AppColors.mainColor)
                      : Icon(Icons.favorite_border, color: AppColors.mainColor),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
