List<History> places = [
  History(image: "assets/xiva.jpeg", name: "Xiva"),
  History(image: "assets/samarqand.jpeg", name: "Samarqand"),
  History(image: "assets/buxoro.jpeg", name: "Buxoro"),
  History(image: "assets/qashqadaryo.jpeg", name: "Qashqadaryo"),
];

class History {
  String image;
  String name;

  History({required this.image, required this.name});
}
