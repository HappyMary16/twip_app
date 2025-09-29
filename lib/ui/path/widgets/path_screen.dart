import 'package:flutter/material.dart' hide Route;
import 'package:go_router/go_router.dart';
import 'package:twip_app/ui/core/ui/painting_list_item.dart';
import 'package:twip_app/ui/path/view_models/path_viewmodel.dart';

import '../../../domain/models/painting/painting.dart';
import '../../../routing/routes.dart';
import '../../core/localization/applocalization.dart';
import '../../core/ui/navigaton_bar.dart';

const String bookingButtonKey = 'booking-button';

class PathScreen extends StatefulWidget {
  const PathScreen({super.key, required this.viewModel});

  final PathViewModel viewModel;

  @override
  State<PathScreen> createState() => _PathScreenState();
}

class _PathScreenState extends State<PathScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        // Workaround for https://github.com/flutter/flutter/issues/115358#issuecomment-2117157419
        heroTag: null,
        key: const ValueKey(bookingButtonKey),
        onPressed: () =>
            context.go(Routes.editRoute(widget.viewModel.route.id)),
        label: Text(AppLocalization.of(context).edit),
        icon: const Icon(Icons.edit_location_outlined),
      ),
      bottomNavigationBar: TwipNavigation(0),
      appBar: AppBar(title: Text(widget.viewModel.route.name)),
      body: ListenableBuilder(
        listenable: widget.viewModel,
        builder: (context, _) {
          List<Painting> paintings = widget.viewModel.paintings;

          return Column(
            children: [
              // ListView не скролиться за замовчуванням
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
