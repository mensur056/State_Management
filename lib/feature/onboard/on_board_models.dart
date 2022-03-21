class OnBoardModel {
  final String title;
  final String description;
  final String imageName;

  OnBoardModel(this.title, this.description, this.imageName);

  String get imageWithPath => 'assets/images/$imageName.png';
}

class OnBoardModels {
  static final List<OnBoardModel> onBoardItems = [
    OnBoardModel('title', "description", 'ic_chef'),
    OnBoardModel('title', "description", 'ic_delivery'),
    OnBoardModel('title', "description", 'ic_door'),
  ];
}
