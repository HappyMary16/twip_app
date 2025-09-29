import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../routing/routes.dart';
import '../model/navigationdata/naviagtion_data.dart';

class TwipNavigation extends StatelessWidget {
  TwipNavigation(this._pageIndex, {super.key});

  final int _pageIndex;

  final List<NavigationData> _destinations = [
    // NavigationData(
    //   selectedIcon: Icon(Icons.home),
    //   icon: Icon(Icons.home_outlined),
    //   label: 'Home',
    //   route: Routes.home,
    // ),
    NavigationData(
      selectedIcon: Icon(Icons.map),
      icon: Icon(Icons.map_outlined),
      label: 'Paths',
      route: Routes.home,
    ),
    NavigationData(
      selectedIcon: Icon(Icons.image),
      icon: Icon(Icons.image_outlined),
      label: 'Paintings',
      route: Routes.paintings,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      onDestinationSelected: (int index) {
        context.go(_destinations[index].route);
      },
      indicatorColor: Colors.deepPurple[100],
      selectedIndex: _pageIndex,
      destinations: _destinations
          .map(
            (d) => NavigationDestination(
              selectedIcon: d.selectedIcon,
              icon: d.icon,
              label: d.label,
            ),
          )
          .toList(),
    );
  }
}
