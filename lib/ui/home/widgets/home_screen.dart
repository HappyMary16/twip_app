import 'package:flutter/material.dart' hide Route;
import 'package:go_router/go_router.dart';

import '../../../routing/routes.dart';
import '../../core/localization/applocalization.dart';
import '../view_models/home_viewmodel.dart';
import 'booking.dart';

const String bookingButtonKey = 'booking-button';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.viewModel});

  final HomeViewModel viewModel;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        // Workaround for https://github.com/flutter/flutter/issues/115358#issuecomment-2117157419
        heroTag: null,
        key: const ValueKey(bookingButtonKey),
        onPressed: () => context.go(Routes.newRoute),
        label: Text(AppLocalization.of(context).addRoute),
        icon: const Icon(Icons.add_location_outlined),
      ),
      appBar: AppBar(title: Text(AppLocalization.of(context).routes)),
      body: SafeArea(
        top: true,
        bottom: true,
        child: ListenableBuilder(
          listenable: widget.viewModel,
          builder: (context, _) {
            return CustomScrollView(
              slivers: [
                SliverList.builder(
                  itemCount: widget.viewModel.routes.length,
                  itemBuilder: (_, index) => Booking(
                    key: ValueKey(index),
                    route: widget.viewModel.routes[index],
                    onTap: () => context.push(
                      Routes.routeWithId(widget.viewModel.routes[index].id),
                    ),
                    confirmDismiss: (_) async {
                      // wait for command to complete
                      widget.viewModel.deleteRoute(widget.viewModel.routes[index].id);
                      // if command completed successfully, return true
                      return true;
                    },
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
