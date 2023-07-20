import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tts/flutter_tts.dart';

import '../blocks/internet_block.dart';
import '../blocks/internet_state.dart';

class NetworkObserverBlock extends StatefulWidget {
  final Widget child;

  const NetworkObserverBlock({super.key, required this.child});

  @override
  _NetworkObserverBlockState createState() => _NetworkObserverBlockState();
}

class _NetworkObserverBlockState extends State<NetworkObserverBlock> {
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
    return BlocConsumer<InternetBlock, InternetState>(
        listener: (context, state) {
      if (state is InternetGainedState) {
        showSnackBar("Internet Connected Successfully..", Colors.green);
        _sendVoiceDialog("Internet Connected Successfully ..");
      }
      if (state is InternetLostState) {
        // showSnackBar("Internet Disconnected..", Colors.red);
        _sendVoiceDialog("Internet Disconnected..");
      }
    }, builder: (context, state) {
      if (state is InternetGainedState) {
        return widget.child;
      }
      if (state is InternetLostState) {
        return const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.wifi_off_outlined,
                size: 40,
                color: Colors.red,
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                "Internet Disconnected...",
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        );
      }
      return const Center(child: Text("Loading..."));
    });
  }
}
