import 'package:fbapp/config/palette.dart';
import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatelessWidget {
  final List<IconData> icons;
  final int selectedIndex;
  final Function(int) onTap;
  final bool isBottomIndicator;

  const CustomBottomNavBar({
    Key key,
    @required this.icons,
    @required this.selectedIndex,
    @required this.onTap,
    this.isBottomIndicator = false,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TabBar(
      indicatorPadding: EdgeInsets.zero,
      indicator: BoxDecoration(
        border: isBottomIndicator
            ? Border(
                bottom: BorderSide(color: Palette.facebookBlue, width: 3.0),
              )
            : Border(
                top: BorderSide(color: Palette.facebookBlue, width: 3.0),
              ),
      ),
      tabs: icons
          .asMap()
          .map(
            (i, icon) => MapEntry(
              i,
              Tab(
                icon: Icon(
                  icon,
                  color:
                      i == selectedIndex ? Palette.facebookBlue : Colors.black,
                ),
              ),
            ),
          )
          .values
          .toList(),
      onTap: onTap,
    );
  }
}
