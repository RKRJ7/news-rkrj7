import 'package:rkrj7_news/models/category_model.dart';

List<CategoryModel> getCategoryList() {

  List<CategoryModel> categories = [
    CategoryModel(catName: 'Business', catImage: 'images/business.jpg'),
    CategoryModel(
      catName: 'Entertainment',
      catImage: 'images/entertainment.jpg',
    ),
    CategoryModel(catName: 'Science', catImage: 'images/science.jpg'),
    CategoryModel(catName: 'Sports', catImage: 'images/sports.jpg'),
    CategoryModel(catName: 'Technology', catImage: 'images/technology.jpg'),
  ];
  
  return categories;

}
