import 'package:flutter/material.dart';
import 'package:poem_generator/components/assets.dart';
import 'package:poem_generator/components/widgets.dart';
import 'package:poem_generator/models/category_model.dart';

class Explore extends StatefulWidget {
  const Explore({super.key});

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: ListView(
          children: [
            sizeBox(20),
            profileWelcom(),
            sizeBox(10),
            searchBar(),
            sizeBox(10),
            myHeading("Poem of the day"),
            poemOfTheDay(categoriesList[1]),
            sizeBox(10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                myHeading("Categories"),
                // GestureDetector(onTap: () {}, child: info("See all"))
              ],
            ),
            sizeBox(10),
            categoriesButtons(),
            sizeBox(20),
            poemPost(context),
            sizeBox(10),
            poemPost(context),
            sizeBox(10),
            poemPost(context),
            sizeBox(10),

            ///
          ],
        ),
      ),
    );
  }

  Container searchBar() {
    return Container(
      decoration: searchDecoration(whiteColor, primaryColor03),
      child: TextField(
        decoration: searchStyle(
            "Search ...", primaryColor, primaryColor03, Icons.search),
        cursorColor: primaryColor,
        style: TextStyle(color: secondaryColor),
        autocorrect: true,
        enableSuggestions: true,
      ),
    );
  }
}
