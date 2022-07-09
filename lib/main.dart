import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_flutter/application/downloads/downloads_bloc.dart';
import 'package:netflix_flutter/presentation/splash/splash_screen.dart';
import 'package:netflix_flutter/presentation/utility/colors/colors.dart';

import 'application/fast_Laugh/fast_laugh_bloc.dart';
import 'application/search/search_bloc.dart';
import 'domain/utility/di/injectable.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection();
  runApp(const NetfLixClone());
}

class NetfLixClone extends StatelessWidget {
  const NetfLixClone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (ctx) => getIt<DownloadsBloc>(),
        ),
        BlocProvider(
          create: (ctx) => getIt<SearchBloc>(),
        ),
        BlocProvider(
          create: (ctx) => getIt<FastLaughBloc>(),
        )
      ],
      child: MaterialApp(
        theme: ThemeData(
          appBarTheme: const AppBarTheme(backgroundColor: Colors.black),
          primaryColor: Colors.black,
          scaffoldBackgroundColor: kBackgroundColor,
          primarySwatch: Colors.blue,
          backgroundColor: Colors.black,
          textTheme: const TextTheme(
            bodyText1: TextStyle(
              color: Colors.white,
            ),
            bodyText2: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        debugShowCheckedModeBanner: false,
        home: const SplashScreen(),
      ),
    );
  }
}
