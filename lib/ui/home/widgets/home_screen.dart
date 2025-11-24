import 'dart:io';

import 'package:flutter/material.dart' hide Route;
import 'package:go_router/go_router.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import '../../../routing/routes.dart';
import '../../core/localization/applocalization.dart';
import '../../core/ui/navigaton_bar.dart';
import '../view_models/home_viewmodel.dart';
import 'path_list_item.dart';

const String bookingButtonKey = 'booking-button';

class HomeScreen extends StatefulWidget {
  final HomeViewModel viewModel;

  final AdSize adSize;

  // Для продакшн версії adUnitId можна знайти в Google AdMob за
  // інструкцією: https://docs.flutter.dev/cookbook/plugins/google-mobile-ads#7-configure-ads
  // Для тестування можна використати adUnitId з
  // https://developers.google.com/admob/android/test-ads#demo_ad_units
  final String adUnitId = Platform.isAndroid
      // Use this ad unit on Android...
      ? 'ca-app-pub-3940256099942544/9214589741' // тестовий adUnitId
      // ... or this one on iOS.
      : 'ca-app-pub-3940256099942544/9214589741'; // тестовий adUnitId

  HomeScreen({super.key, required this.viewModel, this.adSize = AdSize.banner});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  BannerAd? _bannerAd;

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
      bottomNavigationBar: TwipNavigation(0),
      body: SafeArea(
        top: true,
        bottom: true,
        child: Column(
          children: [
            SizedBox(
              height: 400.0,
              child: ListenableBuilder(
                listenable: widget.viewModel,
                builder: (context, _) {
                  return CustomScrollView(
                    slivers: [
                      SliverList.builder(
                        itemCount: widget.viewModel.routes.length,
                        itemBuilder: (_, index) => PathListItem(
                          key: ValueKey(index),
                          route: widget.viewModel.routes[index],
                          onTap: () => context.push(
                            // перехід на сторінку з інформацією про маршрут
                            Routes.routeWithId(
                              widget.viewModel.routes[index].id,
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            SizedBox(
              width: widget.adSize.width.toDouble(),
              height: widget.adSize.height.toDouble(),
              child: _bannerAd == null
                  // Nothing to render yet.
                  ? const SizedBox()
                  // The actual ad.
                  : AdWidget(ad: _bannerAd!),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _loadAd();
  }

  @override
  void dispose() {
    _bannerAd?.dispose();
    super.dispose();
  }

  void _loadAd() {
    final bannerAd = BannerAd(
      size: widget.adSize,
      adUnitId: widget.adUnitId,
      request: const AdRequest(),
      listener: BannerAdListener(
        // Called when an ad is successfully received.
        onAdLoaded: (ad) {
          if (!mounted) {
            ad.dispose();
            return;
          }
          setState(() {
            _bannerAd = ad as BannerAd;
          });
        },
        // Called when an ad request failed.
        onAdFailedToLoad: (ad, error) {
          debugPrint('BannerAd failed to load: $error');
          ad.dispose();
        },
      ),
    );

    // Start loading.
    bannerAd.load();
  }
}
