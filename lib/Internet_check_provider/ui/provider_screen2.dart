import 'package:check_internet_globally/Internet_check_provider/ui/provider_screen3.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../util/network_observer_provider.dart';

class ProviderScreen2 extends StatefulWidget {
  const ProviderScreen2({Key? key}) : super(key: key);

  @override
  State<ProviderScreen2> createState() => _ProviderScreen2State();
}

class _ProviderScreen2State extends State<ProviderScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Provider Screen2"),
      ),
      body: SafeArea(
        child: ProviderNetworkObserver(
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
                        builder: (context) => const ProviderScreen3(),
                      ),
                    );
                  },
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text("Screen3"),
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
