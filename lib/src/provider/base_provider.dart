import 'package:flutter/material.dart';
import 'package:noa_mobile/src/models/event.dart';

class BaseProvider extends ChangeNotifier {
  List<Event> _events = [
    Event(title: 'party 1', name: 'party 1'),
    Event(title: 'party 2', name: 'party 2')
  ];

  List<Event> get events => _events;
}
