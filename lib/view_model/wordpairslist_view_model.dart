import 'package:get/get.dart';
import 'package:word_pair_generators/model/favourite_word_pair_list_model.dart';
import 'package:word_pair_generators/model/word_pair_list_model.dart';
import '../utills/widgets.dart';

class WordPairListViewModel extends GetxController {
  RxList<FavouriteWordPairsModel> favouriteList = <FavouriteWordPairsModel>[].obs;

  RxList<WordPairsModel> wordsPairsList = [
    WordPairsModel(pairsWords: "Bacon and Eggs", isFavourite: false.obs),
    WordPairsModel(pairsWords: "Back and Forth", isFavourite: false.obs),
    WordPairsModel(pairsWords: "Bed and Breakfast", isFavourite: false.obs),
    WordPairsModel(pairsWords: "Coffee and Donuts", isFavourite: false.obs),
    WordPairsModel(pairsWords: "Dead or Alive", isFavourite: false.obs),
    WordPairsModel(pairsWords: "Cause and Effect", isFavourite: false.obs),
    WordPairsModel(pairsWords: "Fun and Games", isFavourite: false.obs),
    WordPairsModel(pairsWords: "Hammer and Nail", isFavourite: false.obs),
    WordPairsModel(pairsWords: "Ladies and Gentlemen", isFavourite: false.obs),
    WordPairsModel(pairsWords: "Law and Order", isFavourite: false.obs),
    WordPairsModel(pairsWords: "Pots and Pans", isFavourite: false.obs),
    WordPairsModel(pairsWords: "Rain or Shine", isFavourite: false.obs),
  ].obs;

  void addToFavouriteList(WordPairsModel wordPairsModel) {
    if (wordPairsModel.isFavourite!.value == true) {
      favouriteList.addAll([
        FavouriteWordPairsModel(
          pairsWords: wordPairsModel.pairsWords!,
          isFavourite: wordPairsModel.isFavourite!,
        )
      ]);

      showToast("Added to favorites");

    } else {
      favouriteList.removeWhere((element) => element.pairsWords == wordPairsModel.pairsWords!);
    }
  }

  void removeFromFavouriteList(FavouriteWordPairsModel favouriteWordPairsModel) {
    favouriteList.removeWhere((element) => element.pairsWords == favouriteWordPairsModel.pairsWords);
    for (var element in wordsPairsList) {
      if (element.pairsWords == favouriteWordPairsModel.pairsWords) {
        element.isFavourite!.value = false;
      }
    }
    showToast("Remove from favorites");
  }
}
