import 'package:flutter/material.dart';
import 'package:xeno/theme/colors.dart';
import 'package:xeno/widgets/side_bar_button.dart';

class SideBar extends StatefulWidget {
  const SideBar({super.key});

  @override
  State<SideBar> createState() => _sideBarState();
}

class _SideBarState extends  State<SideBar> {
  bool isCollapsed = true;

  @override
  Widget build(BuildContext context){
    return AnimatedContainer(
      duration: const Duration(milliseconds: 100),
      width: isCollapsed ? 64:150,
      color: AppColors.sideNav,
      children: [
        const SizedBox(height: 16),
        Icon(
          Icons.auto_awesome_mosaic,
          colors
        )
      ]
    )
  }
}