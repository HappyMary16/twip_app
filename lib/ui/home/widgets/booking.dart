import 'package:flutter/material.dart' hide Route;

import 'package:twip_app/domain/models/route/route.dart';

class Booking extends StatelessWidget {
  const Booking({
    super.key,
    required this.route,
    required this.onTap,
    required this.confirmDismiss,
  });

  final Route route;
  final GestureTapCallback onTap;
  final ConfirmDismissCallback confirmDismiss;

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: ValueKey(key),
      direction: DismissDirection.endToStart,
      confirmDismiss: confirmDismiss,
      background: Container(
        color: Colors.grey,
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsets.only(right: 100),
              child: Icon(Icons.delete),
            ),
          ],
        ),
      ),
      // InkWell - a rectangular area of a [Material] that responds to touch.
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(route.name, style: Theme.of(context).textTheme.titleLarge),
            ],
          ),
        ),
      ),
    );
  }
}
