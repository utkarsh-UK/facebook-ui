import 'package:fbapp/config/palette.dart';
import 'package:fbapp/models/models.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class MoreOptionsList extends StatelessWidget {
  final User currentUser;
  final List<List> moreOptionsList = const [
    [MdiIcons.shieldAccount, Colors.deepPurple, 'COVID-19 Info Center'],
    [MdiIcons.accountMultiple, Colors.cyan, 'Friends'],
    [MdiIcons.facebookMessenger, Palette.facebookBlue, 'Messenger'],
    [MdiIcons.flag, Colors.orange, 'Pages'],
    [MdiIcons.storefront, Palette.facebookBlue, 'Marketplace'],
    [Icons.ondemand_video, Palette.facebookBlue, 'Watch'],
    [MdiIcons.calendarStar, Colors.red, 'Events'],
  ];

  const MoreOptionsList({Key key, @required this.currentUser})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxWidth: 280.0,
      ),
      child: ListView.builder(
        itemCount: 1 + moreOptionsList.length,
        itemBuilder: (context, index) {
          if (index == 0) {
            return Padding(padding: const EdgeInsets.symmetric(vertical: 8.0));
          }
          final List option = moreOptionsList[index - 1];

          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Option(
              icon: option[0],
              color: option[1],
              label: option[2],
            ),
          );
        },
      ),
    );
  }
}

class Option extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String label;

  const Option(
      {Key key,
      @required this.icon,
      @required this.color,
      @required this.label})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Row(
        children: [
          Icon(
            icon,
            size: 38.0,
            color: color,
          ),
          SizedBox(
            width: 6.0,
          ),
          Flexible(
            child: Text(
              label,
              style: TextStyle(fontSize: 16.0),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
