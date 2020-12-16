import 'package:flutter/material.dart';
import 'package:noa_mobile/src/provider/base_provider.dart';
import 'package:noa_mobile/src/screens/tabs/main_tabs.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => BaseProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MainTabs(),
      ),
    ),
  );
}
