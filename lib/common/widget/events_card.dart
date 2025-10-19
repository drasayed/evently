import 'package:evently/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class EventsCard extends StatelessWidget {
  const EventsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: Assets.images.birthday.provider(),fit:BoxFit.cover,),
        color: Colors.amber,
      ),
      height: 200,
      padding: EdgeInsets.symmetric(vertical: 20),
      margin: EdgeInsets.symmetric(vertical: 12),
    );
  }
}
