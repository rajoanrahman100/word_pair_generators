import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:word_pair_generators/view_model/wordpairslist_view_model.dart';

import '../utills/colors.dart';
import '../utills/widgets.dart';
import 'no_item_display_screen.dart';

class FavouriteWordParsListScreen extends StatelessWidget {
  var wordPairsListVM = Get.find<WordPairListViewModel>();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: kBlackColor,
        title: textSans("Favourite Word Pairs", Colors.white),
      ),
      body: Obx(() => wordPairsListVM.favouriteList.isEmpty
          ? NoItemDisplayWidget(size: size)
          : ListView.builder(
              itemCount: wordPairsListVM.favouriteList.length,
              itemBuilder: (_, index) {
                var favouriteData = wordPairsListVM.favouriteList[index];

                return ListTile(
                  title: textSans(favouriteData.pairsWords!, kBlackColor, fontWeight: FontWeight.w500),
                  trailing: Icon(
                    Icons.close,
                    color: kBlackColor,
                  ),
                  onTap: () {
                    wordPairsListVM.removeFromFavouriteList(favouriteData);
                  },
                );
              },
            )),
    );
  }
}

