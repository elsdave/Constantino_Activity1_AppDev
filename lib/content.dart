class Contents {
  String image;
  String title;
  String size;

  Contents({required this.image, required this.title, required this.size});

}

List<Contents> contents = [

  Contents(
    image: 'assets/FORD.png',
    title: "Ford",
    size: '100'
  ),
  Contents(
    image: 'assets/VOLVO.png',
    title: "Volvo",
    size: '100'
  ),
  Contents(
    image: 'assets/BMW.png',
    title: "BMW",
    size: '200'
  ),
];