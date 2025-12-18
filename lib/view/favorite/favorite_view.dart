import 'package:flutter/material.dart';

import '../../common/color_extenstion.dart';
import '../data/dummy/book_data.dart';
import '../data/dummy/wishlist_data.dart';
import '../book_reading/book_reading_view.dart';

class FavoriteView extends StatefulWidget {
  const FavoriteView({super.key});

  @override
  State<FavoriteView> createState() => _FavoriteViewState();
}

class _FavoriteViewState extends State<FavoriteView> {
  @override
  Widget build(BuildContext context) {
    final wishlistBooks = BookData.allBooks
        .where((b) => WishlistData.wishlistIds.contains(b["id"]))
        .toList();

    return Scaffold(
      appBar: AppBar(
         title: const Text(
    "Favorite",
    style: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
    ),
  ),
  backgroundColor: TColor.primary,
),
      body: wishlistBooks.isEmpty
          ? Center(
              child: Text(
                "Wishlist masih kosong ❤️",
                style: TextStyle(
                  color: TColor.subTitle,
                  fontSize: 16,
                ),
              ),
            )
          : ListView.builder(
              padding: const EdgeInsets.all(15),
              itemCount: wishlistBooks.length,
              itemBuilder: (context, index) {
                final book = wishlistBooks[index];

                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => BookReadingView(bObj: book),
                      ),
                    ).then((_) => setState(() {}));
                  },
                  child: Card(
                    margin: const EdgeInsets.only(bottom: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: ListTile(
                      leading: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          book["img"],
                          width: 55,
                          fit: BoxFit.cover,
                        ),
                      ),
                      title: Text(
                        book["name"],
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(book["author"]),
                      trailing: IconButton(
                        icon: const Icon(Icons.delete, color: Colors.red),
                        onPressed: () {
                          setState(() {
                            WishlistData.toggleWishlist(book["id"]);
                          });
                        },
                      ),
                    ),
                  ),
                );
              },
            ),
    );
  }
}
