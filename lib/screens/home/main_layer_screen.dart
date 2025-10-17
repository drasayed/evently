import 'package:evently/common/theme/app_colors.dart';
import 'package:evently/gen/assets.gen.dart';
import 'package:flutter/material.dart';
class MainLayerScreen extends StatefulWidget {
  const MainLayerScreen({super.key});
  static const routeName = '/MainLayerScreen';

  @override
  State<MainLayerScreen> createState() => _MainLayerScreenState();
}

class _MainLayerScreenState extends State<MainLayerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation:FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(padding: EdgeInsets.all(5),
      
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
notchMargin:5,
clipBehavior:Clip.antiAliasWithSaveLayer,

        child: BottomNavigationBar(
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
    );
  }
}
