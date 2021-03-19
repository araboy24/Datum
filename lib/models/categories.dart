class Categories {

  final String title;
  final Map trackedCategories;

  Categories({this.title, this.trackedCategories});

}

class CategoryData {
  final Map trackedCategories;

  CategoryData({this.trackedCategories});

  bool isTracked(String title){
    return this.trackedCategories[title];
  }

  bool toggleIsTracked(String title){
    this.trackedCategories.update('title', (value) => !this.trackedCategories[title]);
  }

  void printData(){
    trackedCategories.forEach((k,v) => print('$k: ${v}'));
  }

}
