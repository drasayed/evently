import 'package:evently/screens/home/home_tab/home_tab.dart';

import '../../common/theme/app_colors.dart';
import '../../gen/assets.gen.dart';
import 'package:flutter/material.dart';
class MainLayerScreen extends StatefulWidget {
   MainLayerScreen({super.key});
  static const routeName = '/MainLayerScreen';
  @override
  State<MainLayerScreen> createState() => _MainLayerScreenState();
}

class _MainLayerScreenState extends State<MainLayerScreen> {
  int currentIndex=0;
  List<Widget> tabs = [HomeTab(),Container(decoration: BoxDecoration(color: AppColors.errorColor),),Container(decoration: BoxDecoration(color: AppColors.grey)),Container(decoration: BoxDecoration(color: AppColors.mainColor))];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: tabs[currentIndex],

      floatingActionButtonLocation:FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(padding: EdgeInsets.all(3),
      
      decoration: BoxDecoration(color: AppColors.lightBGColor,shape:BoxShape.circle,),
        child: FloatingActionButton(
          clipBehavior:Clip.hardEdge,
          onPressed: () {},
          shape: CircleBorder(),
          backgroundColor: Theme.of(
            context,
          ).bottomNavigationBarTheme.backgroundColor,
          child: Icon(Icons.add, color: AppColors.lightBGColor, size: 40),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
shape: CircularNotchedRectangle(),
padding: EdgeInsetsGeometry.zero,
notchMargin:0,
clipBehavior:Clip.antiAliasWithSaveLayer,

        child: Theme(data:Theme.of(context).copyWith(splashColor: Colors.transparent),
          child: BottomNavigationBar(
            currentIndex:currentIndex,
            onTap:(value) {
              setState(() {
                currentIndex=value;
              });
            },
            type: BottomNavigationBarType.fixed,
            unselectedItemColor: AppColors.lightBGColor,
            selectedItemColor: AppColors.lightBGColor,
            unselectedLabelStyle: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
            ),
            selectedLabelStyle: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
            ),
            items: [
              BottomNavigationBarItem(
                icon: Assets.icons.homeUnselected.svg(),
                activeIcon: Assets.icons.homeSelected.image(),
                label: 'Home',
              ), //TODO local
              BottomNavigationBarItem(
                icon: Assets.icons.mapUnselected.svg(),
                activeIcon: Assets.icons.mapSelected.svg(),
                label: 'Map',
              ),//TODO local
              BottomNavigationBarItem(
                icon: Assets.icons.heartUnselected.svg(),
                activeIcon: Assets.icons.heartSelected.svg(),
                label: 'Love',
              ),//TODO Local
              BottomNavigationBarItem(
                icon: Assets.icons.profileUnselected.svg(),
                activeIcon: Assets.icons.profileSelected.svg(),
                label: 'Profile',
              ),//TODO Local
            ],
          ),
        ),
      ),
    );
  }
}
