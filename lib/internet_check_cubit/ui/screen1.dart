import 'package:check_internet_globally/internet_check_block/ui/screen2.dart';
import 'package:check_internet_globally/internet_check_cubit/ui/screen2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/network_observer_cubit.dart';

class CubitScreen1 extends StatefulWidget {
  const CubitScreen1({Key? key}) : super(key: key);

  @override
  State<CubitScreen1> createState() => _CubitScreen1State();
}

class _CubitScreen1State extends State<CubitScreen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Screen1"),
      ),
      body: NetworkObserverCubit(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(
                Icons.wifi,
                size: 40,
                color: Colors.green,
              ),
              const SizedBox(
                height: 12,
              ),
              const Text(
                "Internet Connected...",
                style: TextStyle(
                    color: Colors.green,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 12,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    CupertinoPageRoute(
                      builder: (context) => const CubitScreen2(),
                    ),
                  );
                },
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("Screen2"),
                    SizedBox(
                      width: 12,
                    ),
                    Icon(
                      CupertinoIcons.arrow_right,
                      size: 18,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
