import 'package:flutter/material.dart' hide Route;
import 'package:twip_app/ui/core/ui/painting_list_item.dart';
import 'package:twip_app/ui/paintings/view_models/paintings_viewmodel.dart';

import '../../../domain/models/painting/painting.dart';
import '../../core/localization/applocalization.dart';
import '../../core/ui/error_indicator.dart';
import '../../core/ui/navigaton_bar.dart';

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
      bottomNavigationBar: TwipNavigation(1),
      body: ListenableBuilder(
        listenable: widget.viewModel,
        builder: (context, _) {
          String? errorMessage = widget.viewModel.errorMessage;
          List<Painting> paintings = widget.viewModel.paintings;

          if (errorMessage != null) {
            return ErrorIndicator(
              title: "Error",
              label: "Can't load the paintings from https://twip.me :("
            );
          }

          // ListView скролиться
          return CustomScrollView(
            slivers: [
              SliverList.builder(
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
