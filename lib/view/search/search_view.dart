import 'package:flutter/material.dart';
import '../../common/color_extenstion.dart';
import '../book_reading/book_reading_view.dart';
import '../data/dummy/book_data.dart';
import '../search/search_force_view.dart';
import '../search/search_fiter_view.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  TextEditingController txtSearch = TextEditingController();

  int selectGenre = 0;

  /// === FILTER DARI SearchFilterView ===
  String? filterGenre;
  double? filterRating;

  final List<String> genreTabs = [
    "Semua",
    "Fantasi",
      "Romance",
      "Inspiratif",
      "Horror",
      "Misteri",
      "Fiksi",
      "Sastra",
      "Sejarah",
      "Biografi",
  ];

  @override
  Widget build(BuildContext context) {
    /// === FILTER BUKU (GABUNG SEMUA) ===
    final books = BookData.allBooks.where((book) {
      final keyword = txtSearch.text.toLowerCase();

      final matchSearch = keyword.isEmpty ||
          book["name"].toLowerCase().contains(keyword) ||
          book["author"].toLowerCase().contains(keyword);

      final matchGenreTab = selectGenre == 0 ||
          book["genre"] == genreTabs[selectGenre];

      final matchFilterGenre =
          filterGenre == null || book["genre"] == filterGenre;

      final matchFilterRating =
          filterRating == null || book["rating"] >= filterRating!;

      return matchSearch &&
          matchGenreTab &&
          matchFilterGenre &&
          matchFilterRating;
    }).toList();

    return Scaffold(
      backgroundColor: Colors.white,

      /// ================= APP BAR =================
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,

        /// === SEARCH FIELD (FORCE SEARCH) ===
        title: Container(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          decoration: BoxDecoration(
            color: TColor.textbox,
            borderRadius: BorderRadius.circular(12),
          ),
          child: TextField(
            controller: txtSearch,
            onChanged: (_) {
              setState(() {});
            },
            decoration: InputDecoration(
              hintText: "Search by title or author",
              border: InputBorder.none,
              icon: Icon(Icons.search, color: TColor.subTitle),
            ),
          ),
        ),


        /// === FILTER BUTTON ===
        actions: [
          IconButton(
            icon: Icon(
              Icons.tune,
              color: (filterGenre != null || filterRating != null)
                  ? TColor.primary
                  : TColor.text,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => SearchFilterView(
                    didFilter: (filter) {
                      setState(() {
                        filterGenre = filter["genre"];
                        filterRating = filter["rating"];
                      });
                    },
                  ),
                ),
              );
            },
          ),
        ],
      ),

      /// ================= BODY =================
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// === GENRE TAB ===
          SizedBox(
            height: 45,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 12),
              itemCount: genreTabs.length,
              itemBuilder: (context, index) {
                final isActive = selectGenre == index;
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectGenre = index;
                    });
                  },
                  child: Container(
                    margin: const EdgeInsets.only(right: 10),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 14, vertical: 8),
                    decoration: BoxDecoration(
                      color: isActive
                          ? TColor.primary.withOpacity(0.15)
                          : TColor.textbox,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      genreTabs[index],
                      style: TextStyle(
                        color:
                            isActive ? TColor.primary : TColor.subTitle,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),

          const SizedBox(height: 10),

          /// === GRID BUKU ===
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              itemCount: books.length,
              gridDelegate:
                  const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 12,
                crossAxisSpacing: 12,
                childAspectRatio: 0.68,
              ),
              itemBuilder: (context, index) {
                final bObj = books[index];

                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => BookReadingView(bObj: bObj),
                      ),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: TColor.textbox.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(14),
                    ),
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              bObj["img"],
                              fit: BoxFit.cover,
                              width: double.infinity,
                            ),
                          ),
                        ),
                        const SizedBox(height: 6),
                        Text(
                          bObj["name"],
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: TColor.text,
                            fontSize: 13,
                          ),
                        ),
                        const SizedBox(height: 2),
                        Text(
                          bObj["author"],
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: TColor.subTitle,
                            fontSize: 11,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
