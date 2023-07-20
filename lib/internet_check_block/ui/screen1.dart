import 'package:check_internet_globally/internet_check_block/ui/screen2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/network_observer_bloc.dart';

class BlockScreen1 extends StatefulWidget {
  const BlockScreen1({Key? key}) : super(key: key);

  @override
  State<BlockScreen1> createState() => _BlockScreen1State();
}

class _BlockScreen1State extends State<BlockScreen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Screen1"),
      ),
      body: SizedBox(
        width: double.infinity,
        child: NetworkObserverBlock(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
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
                        builder: (context) => const BlockScreen2(),
                      ),
                    );
                  },
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text("Screen2"),
                      SizedBox(width: 12,),
                      Icon(CupertinoIcons.arrow_right,size: 18,)
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
