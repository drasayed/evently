
class EventsModel {
  String title;
  String date;
  bool isFav;
  String? description;
  int catId;

  EventsModel({
    required this.title,
    required this.date,
    required this.catId,
    this.description,
    required this.isFav,
  });
}
