import 'package:evently/models/events_model.dart';
import 'package:evently/screens/home/home_tab/events_list_view.dart';
import 'package:flutter/material.dart';

import 'home_header.dart';

class HomeTab extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    List<EventsModel> events = List.generate(
    5,
    (index) => EventsModel(
      title: '$index',
      date: ' 22 \nDec',
      catId: index+1,
      isFav: index % 2 == 0,
    ),
  );
    return Scaffold(body: Column(children: [HomeHeader(), EventsListView(events: events,)]));
  }
}
