import 'package:evently/common/theme/app_colors.dart';
import 'package:evently/gen/assets.gen.dart';
import 'package:evently/models/category_model.dart';
import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      padding: EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Theme.of(context).bottomNavigationBarTheme.backgroundColor,
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(24)),
      ),
      child: SafeArea(
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome Back ✨',
                      style: TextStyle(
                        color: AppColors.lightBGColor,
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                    ), //TODO local
                    Text(
                      'John Safwat',
                      style: TextStyle(
                        color: AppColors.lightBGColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                    SizedBox(height: 11),

                    Row(
                      children: [
                        Icon(
                          Icons.location_on_outlined,
                          color: AppColors.lightBGColor,
                        ),
                        Text(
                          'Cairo , Egypt',
                          style: TextStyle(
                            color: AppColors.lightBGColor,
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                          ),
                        ), //TODO Local
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      height: 33,
                      width: 33,
                      child: IconButton(
                        onPressed: () {},
                        icon: Assets.icons.sun.svg(),
                        padding: EdgeInsets.all(0),
                      ),
                    ),
                    SizedBox(
                      height: 33,
                      width: 33,
                      child: FilledButton(
                        onPressed: () {},
                        style: FilledButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusGeometry.circular(8),
                          ),
                          padding: EdgeInsets.all(0),
                          backgroundColor: AppColors.lightBGColor,
                        ),
                        child: Text(
                          'EN',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Theme.of(
                              context,
                            ).bottomNavigationBarTheme.backgroundColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 12),
            SizedBox(height: 48, child: FilterView()),
          ],
        ),
      ),
    );
  }
}

class FilterView extends StatefulWidget {
  const FilterView({super.key});

  @override
  State<FilterView> createState() => _FilterViewState();
}

class _FilterViewState extends State<FilterView> {
  int selectedId = 0;

  @override
  Widget build(BuildContext context) {
    List categories = CategoryModel.categories;
    return ListView.separated(
      itemBuilder: (context, index) {
        CategoryModel currentCat = categories[index];
        bool isSelected = selectedId == currentCat.CatId;
        return FilterChip(
          label: Row(
            spacing: 8,
            children: [
              Icon(currentCat.catIcon, color:isSelected?Theme.of(context).focusColor:AppColors.lightBGColor),
              Text(
                currentCat.catName,
                style: TextStyle(
                  color: isSelected?Theme.of(context).focusColor:AppColors.lightBGColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          selected: isSelected,
          side: BorderSide(
            color: isSelected
                ? Colors.transparent
                : Theme.of(context).shadowColor,
          ),
          selectedColor: Theme.of(context).shadowColor,
          backgroundColor: Theme.of(
            context,
          ).bottomNavigationBarTheme.backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(46),
          ),
          showCheckmark: false,
          onSelected: (value) {
            setState(() {
              selectedId = index;
            });
          },
        );
      },
      separatorBuilder: (context, index) => SizedBox(width: 10),
      itemCount: categories.length,
      scrollDirection: Axis.horizontal,
    );
  }
}
