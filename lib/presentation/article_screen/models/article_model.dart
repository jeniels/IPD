import 'package:get/get.dart';
import 'article_item_model.dart';

class ArticleModel {
  Rx<List<ArticleItemModel>> articleItemList =
      Rx(List.generate(2, (index) => ArticleItemModel()));
}
