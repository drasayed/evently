import 'package:evently/common/widget/events_card.dart';
import 'package:evently/models/events_model.dart';
import 'package:flutter/material.dart';

class EventsListView extends StatelessWidget {
  const EventsListView({super.key, required this.events});
final List<EventsModel>events;
  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child: ListView.builder(
        itemCount: events.length,
        itemBuilder: (BuildContext context, int index) {
          return EventsCard(eventModel:events[index] ,);
        },
      ),
    );
  }
}