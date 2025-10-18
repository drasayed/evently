import 'package:flutter/material.dart';

class CategoryModel {
  int CatId;
  String catName;
  IconData catIcon;

  CategoryModel({
    required this.CatId,
    required this.catName,
    required this.catIcon,
  });

  static List<CategoryModel> categories = [
    CategoryModel(CatId: 0, catName: 'all', catIcon: Icons.explore),
    CategoryModel(CatId: 1, catName: 'Sport', catIcon: Icons.directions_bike),
    CategoryModel(CatId: 2, catName: 'Birthday', catIcon: Icons.cake),
    CategoryModel(CatId: 3, catName: 'Eating', catIcon: Icons.flatware),
    CategoryModel(
      CatId: 4,
      catName: 'Meting',
      catIcon: Icons.meeting_room_outlined,
    ),
    CategoryModel(
      CatId: 5,
      catName: 'Gaming',
      catIcon: Icons.videogame_asset_outlined,
    ),
  ];
}
