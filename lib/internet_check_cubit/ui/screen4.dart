import 'package:flutter/material.dart';

import '../utils/network_observer_cubit.dart';

class CubitScreen4 extends StatefulWidget {
  const CubitScreen4({Key? key}) : super(key: key);

  @override
  State<CubitScreen4> createState() => _CubitScreen4State();
}

class _CubitScreen4State extends State<CubitScreen4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Screen4"),
      ),
      body: const SizedBox(
        width: double.infinity,
        child: NetworkObserverCubit(
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
