import 'package:book_grocer/common_widget/round_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../common/color_extenstion.dart';

class SearchFilterView extends StatefulWidget {
  final Function(Map)? didFilter;
  const SearchFilterView({super.key, this.didFilter});

  @override
  State<SearchFilterView> createState() => _SearchFilterViewState();
}

class _SearchFilterViewState extends State<SearchFilterView> {
  int selectGenre = -1;
  int selectRate = -1;
  bool genreShowMore = false;

  /// GENRE HARUS SESUAI DATA BUKU
  final List<String> genreArr = [
    "Fantasi",
    "Romance",
    "Comedy",
    "Horror",
    "Mystery",
    "Fiksi",
  ];

  final List<double> ratingArr = [5, 4, 3, 2, 1];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "Filter",
          style: TextStyle(
              color: TColor.text,
              fontSize: 20,
              fontWeight: FontWeight.w700),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text("Cancel",
                style: TextStyle(color: TColor.text, fontSize: 16)),
          )
        ],
      ),

      /// ===== BODY =====
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            /// ===== GENRE =====
            Padding(
              padding: const EdgeInsets.all(15),
              child: Text("Genre",
                  style:
                      TextStyle(color: TColor.subTitle, fontSize: 13)),
            ),

            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: genreShowMore
                  ? genreArr.length
                  : (genreArr.length > 4 ? 4 : genreArr.length),
              itemBuilder: (context, index) {
                final genre = genreArr[index];
                return ListTile(
                  leading: Icon(
                    selectGenre == index
                        ? Icons.radio_button_checked
                        : Icons.radio_button_off,
                    color: selectGenre == index
                        ? TColor.primary
                        : TColor.subTitle,
                  ),
                  title: Text(genre,
                      style: TextStyle(color: TColor.text)),
                  onTap: () {
                    setState(() {
                      selectGenre = index;
                    });
                  },
                );
              },
            ),

            GestureDetector(
              onTap: () {
                setState(() {
                  genreShowMore = !genreShowMore;
                });
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 10, horizontal: 15),
                child: Text(
                  genreShowMore ? "Hide" : "See more",
                  style: TextStyle(color: TColor.primary),
                ),
              ),
            ),

            /// ===== RATING =====
            Padding(
              padding: const EdgeInsets.all(15),
              child: Text("Minimum Rating",
                  style:
                      TextStyle(color: TColor.subTitle, fontSize: 13)),
            ),

            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: ratingArr.length,
              itemBuilder: (context, index) {
                final rating = ratingArr[index];
                return ListTile(
                  leading: Icon(
                    selectRate == index
                        ? Icons.radio_button_checked
                        : Icons.radio_button_off,
                    color: selectRate == index
                        ? TColor.primary
                        : TColor.subTitle,
                  ),
                  title: IgnorePointer(
                    child: RatingBar.builder(
                      initialRating: rating,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: false,
                      itemCount: 5,
                      itemSize: 18,
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        color: TColor.primary,
                      ),
                      onRatingUpdate: (_) {},
                    ),
                  ),
                  onTap: () {
                    setState(() {
                      selectRate = index;
                    });
                  },
                );
              },
            ),

            const SizedBox(height: 80),
          ],
        ),
      ),

      /// ===== APPLY =====
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(15),
        child: RoundButton(
          title: "Apply",
          onPressed: () {
            final filterResult = {
              "genre": selectGenre >= 0
                  ? genreArr[selectGenre]
                  : null,
              "rating": selectRate >= 0
                  ? ratingArr[selectRate]
                  : null,
            };

            if (widget.didFilter != null) {
              widget.didFilter!(filterResult);
            }

            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
