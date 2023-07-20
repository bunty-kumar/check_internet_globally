import 'package:check_internet_globally/internet_check_cubit/cubit/internet_block.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'Internet_check_provider/controller/network_provider_controller.dart';
import 'global_internet_check.dart';
import 'internet_check_block/blocks/internet_block.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        BlocProvider(create: (context) => InternetBlock()),
        BlocProvider(create: (context) => InternetCubit()),
        ChangeNotifierProvider<NetworkProviderController>(
          create: (_) => NetworkProviderController(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          primarySwatch: Colors.deepPurple,
          useMaterial3: true,
        ),
        home: const GlobalInternetCheck(),
      ),
    );
  }
}
