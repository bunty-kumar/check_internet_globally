import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:provider/provider.dart';

import '../controller/network_provider_controller.dart';

class ProviderNetworkObserver extends StatefulWidget {
  final Widget child;

  const ProviderNetworkObserver({Key? key, required this.child})
      : super(key: key);

  @override
  _ProviderNetworkObserverState createState() =>
      _ProviderNetworkObserverState();
}

class _ProviderNetworkObserverState extends State<ProviderNetworkObserver> {
  Future<void> _retryConnection() async {
    var connectivityResult = await Connectivity().checkConnectivity();
    if (connectivityResult != ConnectivityResult.none) {
      // Internet connection is available, go back to the previous screen
      Navigator.of(context).pop();
    }
  }

  void showSnackBar(String text, Color color) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(text),
        backgroundColor: color,
      ),
    );
  }

  final FlutterTts _flutterTts = FlutterTts();

  Future<void> _sendVoiceDialog(String message) async {
    await _flutterTts.speak(message);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<NetworkProviderController>(
      builder: (context, networkObserver, child) {
        // If the status is offline, show the custom offline screen
        if (networkObserver.status == ConnectivityStatus.offline) {
          return Scaffold(
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.wifi_off_outlined,
                    size: 40,
                    color: Colors.red,
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  const Text(
                    "Internet Disconnected...",
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  ElevatedButton(
                    onPressed: _retryConnection,
                    child: const Text('Retry'),
                  ),
                ],
              ),
            ),
          );
        } else {
          // If the status is online, return the original child widget
          return widget.child;
        }
      },
    );
  }
}
