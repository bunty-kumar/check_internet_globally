import 'package:check_internet_globally/Internet_check_provider/ui/provider_screen1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../util/network_observer_provider.dart';

class ProviderNetworkCheck extends StatefulWidget {
  const ProviderNetworkCheck({Key? key}) : super(key: key);

  @override
  State<ProviderNetworkCheck> createState() => _ProviderNetworkCheckState();
}

class _ProviderNetworkCheckState extends State<ProviderNetworkCheck> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Internet Check provider"),
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
                        builder: (context) => const ProviderScreen1(),
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
