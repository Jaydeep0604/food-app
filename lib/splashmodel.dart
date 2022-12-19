class UnbordingContent {
  String image;
  String title;
  String discription;

  UnbordingContent({required this.image, required this.title, required this.discription});
}

List<UnbordingContent> contents = [
  UnbordingContent(
    title: 'Choose A Tasty Dish',
    image: 'assets/popcorn 1.png',
    discription: "Order anything you want from your\nFavorite restaurant."
    
  ),
  UnbordingContent(
    title: 'Easy Payment',
    image: 'assets/money 1.png',
    discription: "Payment made easy through debit\ncard, credit card  & more ways to pay\nfor your food"
    
  ),
  UnbordingContent(
    title: 'Enjoy the Taste!',
    image: 'assets/restaurant 1.png',
    discription: "Healthy eating means eating a variety\nof foods that give you the nutrients you\need to maintain your health."
  ),
];