import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../util/network_observer_provider.dart';

class ProviderScreen3 extends StatefulWidget {
  const ProviderScreen3({Key? key}) : super(key: key);

  @override
  State<ProviderScreen3> createState() => _ProviderScreen3State();
}

class _ProviderScreen3State extends State<ProviderScreen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Provider Screen3"),
      ),
      body: const SafeArea(
        child: ProviderNetworkObserver(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
