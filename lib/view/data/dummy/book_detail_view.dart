import 'package:flutter/material.dart';
import '../../../common/color_extenstion.dart';

class BookDetailView extends StatelessWidget {
  final Map<String, dynamic> book;

  const BookDetailView({
    super.key,
    required this.book,
  });

  @override
  Widget build(BuildContext context) {
    final List reviews = book["reviews"] ?? [];

    return Scaffold(
      backgroundColor: Colors.white,

      /// APP BAR
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: TColor.text),
        actions: [
          IconButton(
            icon: const Icon(Icons.favorite_border),
            onPressed: () {
              // add to wishlist
            },
          ),
        ],
      ),

      /// BODY
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// COVER
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(18),
                child: Image.asset(
                  book["img"],
                  width: 220,
                  height: 320,
                  fit: BoxFit.cover,
                ),
              ),
            ),

            const SizedBox(height: 24),

            /// TITLE
            Text(
              book["name"],
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: TColor.text,
              ),
            ),

            const SizedBox(height: 6),

            /// AUTHOR
            Text(
              book["author"],
              style: TextStyle(
                color: TColor.subTitle,
                fontSize: 14,
              ),
            ),

            const SizedBox(height: 10),

            /// RATING & GENRE
            Row(
              children: [
                const Icon(Icons.star,
                    color: Colors.orange, size: 18),
                const SizedBox(width: 4),
                Text(
                  book["rating"].toString(),
                  style: const TextStyle(fontSize: 14),
                ),
                const SizedBox(width: 10),
                Text(
                  "• ${book["genre"]}",
                  style: TextStyle(
                    color: TColor.subTitle,
                    fontSize: 13,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 16),

            /// PRICE
            Text(
              "Rp ${book["price"]}",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: TColor.primary,
              ),
            ),

            const SizedBox(height: 26),

            /// SINOPSIS
            _sectionTitle("Sinopsis"),
            const SizedBox(height: 6),
            Text(
              book["synopsis"] ?? "Sinopsis belum tersedia.",
              style: TextStyle(
                color: TColor.subTitle,
                height: 1.6,
              ),
            ),

            const SizedBox(height: 22),

            /// DESKRIPSI
            _sectionTitle("Deskripsi"),
            const SizedBox(height: 6),
            Text(
              book["description"] ?? "-",
              style: TextStyle(
                color: TColor.subTitle,
                height: 1.6,
              ),
            ),

            const SizedBox(height: 26),

            /// REVIEWS
            _sectionTitle("Ulasan Pembaca"),
            const SizedBox(height: 10),

            reviews.isEmpty
                ? Text(
                    "Belum ada ulasan",
                    style: TextStyle(color: TColor.subTitle),
                  )
                : Column(
                    children: reviews
                        .map((review) => _reviewItem(review))
                        .toList(),
                  ),

            const SizedBox(height: 80),
          ],
        ),
      ),

      /// ADD TO CART
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: TColor.primary,
            padding: const EdgeInsets.symmetric(vertical: 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14),
            ),
          ),
          onPressed: () {
            // add to cart
          },
          child: const Text(
            "Checkout",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }

  // ===============================
  // SECTION TITLE
  // ===============================
  Widget _sectionTitle(String title) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: TColor.text,
      ),
    );
  }

  // ===============================
  // REVIEW ITEM
  // ===============================
  Widget _reviewItem(Map review) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: TColor.textbox.withOpacity(0.4),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            review["user"],
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 4),
          Row(
            children: List.generate(
              review["rating"],
              (_) => const Icon(
                Icons.star,
                color: Colors.orange,
                size: 14,
              ),
            ),
          ),
          const SizedBox(height: 6),
          Text(
            review["comment"],
            style: TextStyle(color: TColor.subTitle),
          ),
        ],
      ),
    );
  }
}
