import 'package:evently/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class CategoryModel {
  int catId;
  String catName;
  IconData catIcon;
  String? catImagePath;

  CategoryModel({
    required this.catId,
    required this.catName,
    required this.catIcon,
    this.catImagePath,
  });

  static List<CategoryModel> categories = [
    CategoryModel(catId: 0, catName: 'all', catIcon: Icons.explore),
    CategoryModel(
      catId: 1,
      catName: 'Sport',
      catIcon: Icons.directions_bike,
      catImagePath: Assets.images.sport.path,
    ),
    CategoryModel(
      catId: 2,
      catName: 'Birthday',
      catIcon: Icons.cake,
      catImagePath: Assets.images.birthday.path,
    ),
    CategoryModel(
      catId: 3,
      catName: 'Eating',
      catIcon: Icons.flatware,
      catImagePath: Assets.images.eating.path,
    ),
    CategoryModel(
      catId: 4,
      catName: 'Meting',
      catIcon: Icons.meeting_room_outlined,
      catImagePath: Assets.images.meeting.path,
    ),
    CategoryModel(
      catId: 5,
      catName: 'Gaming',
      catIcon: Icons.videogame_asset_outlined,
      catImagePath: Assets.images.gaming.path,
    ),
  ];
}
