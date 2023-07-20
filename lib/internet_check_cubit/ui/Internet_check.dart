import 'package:check_internet_globally/internet_check_block/ui/screen1.dart';
import 'package:check_internet_globally/internet_check_cubit/ui/screen1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/network_observer_cubit.dart';

class InternetCheckCubit extends StatefulWidget {
  const InternetCheckCubit({Key? key}) : super(key: key);

  @override
  State<InternetCheckCubit> createState() => _InternetCheckCubitState();
}

class _InternetCheckCubitState extends State<InternetCheckCubit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Internet Check cubit"),
      ),
      body: SafeArea(
        child: NetworkObserverCubit(
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
                        builder: (context) => const CubitScreen1(),
                      ),
                    );
                  },
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text("Screen1"),
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
      ),
    );
  }
}
