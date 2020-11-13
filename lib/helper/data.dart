import 'package:e_learning/model/category.dart';

List<CategoryModel> getCategories() {
  List<CategoryModel> myCategories = List<CategoryModel>();
  CategoryModel categoryModel;

  //1
  categoryModel = new CategoryModel();
  categoryModel.categoryName = "Adobe XD\nPrototyping";
  categoryModel.imageUrl = "assets/icons/Adobe XD icon.svg";
  categoryModel.isActive = true;
  myCategories.add(categoryModel);

  //2
  categoryModel = new CategoryModel();
  categoryModel.categoryName = "Sketch shortcuts\nand tricks";
  categoryModel.imageUrl = "assets/icons/Sketch Icon.svg";
  categoryModel.isActive = false;
  myCategories.add(categoryModel);

  //3
  categoryModel = new CategoryModel();
  categoryModel.categoryName = "UI Motion Design in\nAfter Effects";
  categoryModel.imageUrl = "assets/icons/After Effects Icon.svg";
  categoryModel.isActive = true;

  myCategories.add(categoryModel);

  //4
  categoryModel = new CategoryModel();
  categoryModel.categoryName = "Figma Essentials";
  categoryModel.imageUrl = "assets/icons/Figma icon.svg";
  categoryModel.isActive = false;

  myCategories.add(categoryModel);

  //5
  categoryModel = new CategoryModel();
  categoryModel.categoryName = "Adobe Photoshop.\nRetouching";
  categoryModel.imageUrl = "assets/icons/Photoshop Icon.svg";
  categoryModel.isActive = true;

  myCategories.add(categoryModel);

  return myCategories;
}
