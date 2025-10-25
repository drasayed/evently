import 'package:evently/common/theme/app_colors.dart';
import 'package:evently/common/widget/custom_text_form_field.dart';
import 'package:evently/models/events_model.dart';
import 'package:evently/screens/home/home_tab/events_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FavTabView extends StatelessWidget {
  const FavTabView({super.key});

  @override
  Widget build(BuildContext context) {
    List<EventsModel> events = List.generate(
    4,
    (index) => EventsModel(
      title: '$index',
      date: ' 22\nDec',
      catId: index+1,
      isFav: index % 2 == 0,
    ),
  );
    return SafeArea(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              height: 56.h,
            
              decoration: BoxDecoration(
                color: Theme.of(context).scaffoldBackgroundColor,
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: AppColors.mainColor),
              ),
              child: CustomTextFormField(
                prefixIcon: Icon(Icons.search),
                hintText: 'Search for Event',
                hintStyle: TextStyle(color: AppColors.mainColor),
                prefixIconColor: AppColors.mainColor,
              ),
            ),
          ),
        EventsListView(events: events,)
        ],
      ),
    );
  }
}
