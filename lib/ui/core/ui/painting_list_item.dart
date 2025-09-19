import 'package:flutter/material.dart' hide Route;
import 'package:twip_app/domain/models/painting/painting.dart';

class PaintingListItem extends StatelessWidget {
  const PaintingListItem({super.key, required this.painting});

  final Painting painting;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      alignment: Alignment.centerLeft,
      child: Text(painting.name, style: Theme.of(context).textTheme.titleLarge),
    );
  }
}
