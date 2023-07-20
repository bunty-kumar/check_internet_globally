import 'package:check_internet_globally/internet_check_block/ui/screen1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/network_observer_bloc.dart';

class InternetCheckBlock extends StatefulWidget {
  const InternetCheckBlock({Key? key}) : super(key: key);

  @override
  State<InternetCheckBlock> createState() => _InternetCheckBlockState();
}

class _InternetCheckBlockState extends State<InternetCheckBlock> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Internet Check Block"),
      ),
      body: SafeArea(
        child: NetworkObserverBlock(
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
                        builder: (context) => const BlockScreen1(),
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
