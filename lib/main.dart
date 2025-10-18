import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'config/dependencies.dart';
import 'main_viewmodel.dart';
import 'routing/router.dart';
import 'ui/core/localization/applocalization.dart';

void main() {
  runApp(
    MultiProvider(
      providers: providers,
      child: Builder(
        builder: (context) {
          return MyApp(viewModel: MainAppViewModel(context.read()));
        },
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.viewModel});

  final MainAppViewModel viewModel;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: viewModel,
      builder: (context, _) => MaterialApp.router(
        localizationsDelegates: [AppLocalizationDelegate()],
        title: 'Flutter Demo',
        theme: viewModel.isDarkMode
            ? ThemeData.dark()
            : ThemeData(
                // This is the theme of your application.
                //
                // TRY THIS: Try running your application with "flutter run". You'll see
                // the application has a purple toolbar. Then, without quitting the app,
                // try changing the seedColor in the colorScheme below to Colors.green
                // and then invoke "hot reload" (save your changes or press the "hot
                // reload" button in a Flutter-supported IDE, or press "r" if you used
                // the command line to start the app).
                //
                // Notice that the counter didn't reset back to zero; the application
                // state is not lost during the reload. To reset the state, use hot
                // restart instead.
                //
                // This works for code too, not just values: Most code changes can be
                // tested with just a hot reload.
                colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              ),
        routerConfig: router(),
      ),
    );
  }
}
