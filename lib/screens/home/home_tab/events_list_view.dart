import 'package:evently/common/widget/events_card.dart';
import 'package:flutter/material.dart';

class EventsListView extends StatelessWidget {
  const EventsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return EventsCard();
        },
      ),
    );
  }
}