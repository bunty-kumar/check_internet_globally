import 'package:check_internet_globally/internet_check_block/ui/screen4.dart';
import 'package:check_internet_globally/internet_check_cubit/ui/screen4.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../utils/network_observer_cubit.dart';

class CubitScreen3 extends StatefulWidget {
  const CubitScreen3({Key? key}) : super(key: key);

  @override
  State<CubitScreen3> createState() => _CubitScreen3State();
}

class _CubitScreen3State extends State<CubitScreen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Screen3"),
        ),
        body: SizedBox(
          width: double.infinity,
          child: NetworkObserverCubit(
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
                          builder: (context) => const CubitScreen4(),
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
