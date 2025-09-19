import 'package:flutter/material.dart' hide Route;
import 'package:twip_app/ui/core/ui/painting_list_item.dart';
import 'package:twip_app/ui/paintings/view_models/paintings_viewmodel.dart';

import '../../../domain/models/painting/painting.dart';
import '../../core/localization/applocalization.dart';

const String bookingButtonKey = 'booking-button';

class PaintingsScreen extends StatefulWidget {
  const PaintingsScreen({super.key, required this.viewModel});

  final PaintingsViewModel viewModel;

  @override
  State<PaintingsScreen> createState() => _PathScreenState();
}

class _PathScreenState extends State<PaintingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(AppLocalization.of(context).paintings)),
      body: ListenableBuilder(
        listenable: widget.viewModel,
        builder: (context, _) {
          List<Painting> paintings = widget.viewModel.paintings;

          // ListView скролиться
          return CustomScrollView(
            slivers: [
              ListView.builder(
                shrinkWrap: true,
                padding: const EdgeInsets.all(8),
                itemCount: paintings.length,
                itemBuilder: (BuildContext context, int index) {
                  return PaintingListItem(painting: paintings[index]);
                },
              ),
            ],
          );
        },
      ),
    );
  }
}
