import 'package:check_internet_globally/internet_check_cubit/cubit/internet_block.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tts/flutter_tts.dart';

class NetworkObserverCubit extends StatefulWidget {
  final Widget child;

  const NetworkObserverCubit({super.key, required this.child});

  @override
  _NetworkObserverCubitState createState() => _NetworkObserverCubitState();
}

class _NetworkObserverCubitState extends State<NetworkObserverCubit> {
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
    return BlocConsumer<InternetCubit, InternetState>(
        listener: (context, state) {
      if (state == InternetState.gained) {
        showSnackBar("Internet Connected Successfully..", Colors.green);
        _sendVoiceDialog("Internet Connected Successfully ..");
      }
      if (state == InternetState.lost) {
        showSnackBar("Internet Disconnected..", Colors.red);
        // _sendVoiceDialog("Internet Disconnected..");
      }
    }, builder: (context, state) {
      if (state == InternetState.gained) {
        return widget.child;
      }
      if (state == InternetState.lost) {
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
