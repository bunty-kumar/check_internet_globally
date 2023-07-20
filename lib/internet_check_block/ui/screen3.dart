import 'package:check_internet_globally/internet_check_block/ui/screen4.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../utils/network_observer_bloc.dart';

class BlockScreen3 extends StatefulWidget {
  const BlockScreen3({Key? key}) : super(key: key);

  @override
  State<BlockScreen3> createState() => _BlockScreen3State();
}

class _BlockScreen3State extends State<BlockScreen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Screen3"),
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
                          builder: (context) => const BlockScreen4(),
                        ),
                      );
                    },
                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text("Screen4"),
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
        ));
  }
}
