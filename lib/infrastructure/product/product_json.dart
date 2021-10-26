import 'package:equatable/equatable.dart';

class Category extends Equatable {
  final String name;
  final String imageUrl;

  const Category({
    required this.name,
    required this.imageUrl,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [name, imageUrl];

  static List<Category> categories = [
    const Category(
      name: "hygiene",
     imageUrl : "https://www.cosmetichairshop.com/site/images/normal/IMG5685jpg_6012fa0821464.jpg"),

    const Category(
        name: "electromenager",
     imageUrl : "https://www.consoglobe.com//wp-content/uploads//2020/04/entretien-electromenager_shutterstock_1680805132.jpg"),
    const Category(
         name: "deco",
     imageUrl : "https://www.maison-travaux.fr/wp-content/uploads/sites/8/2018/07/salon-amenager-750x410.jpg",),
      const Category(
         name: "informatique",
     imageUrl : "https://www.papex.sn/web/image/1785/MAT2RIEL%20INFORMATIQUE.png",),
      const Category(
          name: "smartphone",
     imageUrl: "https://coachathome.fr/wp-content/uploads/2019/01/connected-objects-634x330.png",),
      const Category(
         name: "goute",
     imageUrl : "https://www.a-qui-s.fr/le-blog/wp-content/uploads/2016/10/pack-gouter-panda.png",),
  ];
}






