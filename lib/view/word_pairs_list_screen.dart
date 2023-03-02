import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:word_pair_generators/model/favourite_word_pair_list_model.dart';
import 'package:word_pair_generators/utills/colors.dart';
import 'package:word_pair_generators/utills/widgets.dart';
import 'package:word_pair_generators/view/favourite_word_pair_list_screen.dart';
import 'package:word_pair_generators/view_model/wordpairslist_view_model.dart';

class WordPairsListScreen extends StatelessWidget {
  var wordPairsListVM = Get.put(WordPairListViewModel());

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: kBlackColor,
        title: textSans("Word Pairs", Colors.white),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FavouriteWordParsListScreen()),
                );
              },
              icon: Icon(
                Icons.list_alt,
                color: Colors.white,
              ))
        ],
      ),
      body: ListView.builder(
        itemCount: wordPairsListVM.wordsPairsList.length,
        itemBuilder: (_, index) {
          var wordPairsData = wordPairsListVM.wordsPairsList[index];

          return Obx(() => ListTile(
                title: textSans(wordPairsData.pairsWords!, kBlackColor, fontWeight: FontWeight.w500),
                trailing: wordPairsData.isFavourite!.value == false
                    ? Icon(
                        Icons.favorite_border,
                        color: kBlackColor,
                      )
                    : Icon(
                        Icons.favorite,
                        color: kBlackColor,
                      ),
                onTap: () {
                  wordPairsData.isFavourite!.value = !wordPairsData.isFavourite!.value;
                  wordPairsListVM.addToFavouriteList(wordPairsData);
                },
              ));
        },
      ),
    );
  }
}
