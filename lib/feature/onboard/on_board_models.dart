class OnBoardModel {
  final String title;
  final String description;
  final String imageName;

  OnBoardModel(this.title, this.description, this.imageName);

  String get imageWithPath => 'assets/images/$imageName.png';
}

class OnBoardModels {
  static final List<OnBoardModel> onBoardItems = [
    OnBoardModel("First Page", 'Description1', 'ic_chef'),
    OnBoardModel("Second Page", 'Description2', 'ic_delivery'),
    OnBoardModel("Third Page", 'Description3', 'ic_door'),
    OnBoardModel("Fourth Page", 'Description4', 'ic_order'),
  ];
}
