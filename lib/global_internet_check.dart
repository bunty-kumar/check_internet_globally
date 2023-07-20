import 'package:check_internet_globally/internet_check_block/ui/Internet_check.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Internet_check_provider/ui/provider_network_check.dart';
import 'internet_check_cubit/ui/Internet_check.dart';

class GlobalInternetCheck extends StatefulWidget {
  const GlobalInternetCheck({Key? key}) : super(key: key);

  @override
  State<GlobalInternetCheck> createState() => _GlobalInternetCheckState();
}

class _GlobalInternetCheckState extends State<GlobalInternetCheck> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Internet Check Globally"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  CupertinoPageRoute(
                    builder: (context) => const ProviderNetworkCheck(),
                  ),
                );
              },
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("Using Provider"),
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
            const SizedBox(
              height: 16,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  CupertinoPageRoute(
                    builder: (context) => const InternetCheckBlock(),
                  ),
                );
              },
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("Using Block"),
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
            const SizedBox(
              height: 16,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  CupertinoPageRoute(
                    builder: (context) => const InternetCheckCubit(),
                  ),
                );
              },
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("Using Cubit"),
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
    );
  }
}
