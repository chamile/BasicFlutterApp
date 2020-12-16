import 'package:flutter/material.dart';
import 'package:noa_mobile/src/provider/base_provider.dart';
import 'package:provider/provider.dart';

class HomeScreenDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text(context.watch<BaseProvider>().events[0].name),
        ),
      ),
    );
  }
}
