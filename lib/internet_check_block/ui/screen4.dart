import 'package:flutter/material.dart';

import '../utils/network_observer_bloc.dart';

class BlockScreen4 extends StatefulWidget {
  const BlockScreen4({Key? key}) : super(key: key);

  @override
  State<BlockScreen4> createState() => _BlockScreen4State();
}

class _BlockScreen4State extends State<BlockScreen4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Screen4"),
      ),
      body: const SizedBox(
        width: double.infinity,
        child: NetworkObserverBlock(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.wifi,
                  size: 40,
                  color: Colors.green,
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  "Internet Connected...",
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 12,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
