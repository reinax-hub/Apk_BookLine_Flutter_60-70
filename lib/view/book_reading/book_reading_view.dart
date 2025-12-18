import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../common/color_extenstion.dart';
import '../data/dummy/wishlist_data.dart';

class BookReadingView extends StatefulWidget {
  final Map<String, dynamic> bObj;

  const BookReadingView({
    super.key,
    required this.bObj,
  });

  @override
  State<BookReadingView> createState() => _BookReadingViewState();
}

class _BookReadingViewState extends State<BookReadingView> {
  double fontSize = 20;
  bool isDark = false;
  bool isLoved = false;

  @override
  void initState() {
    super.initState();
    isLoved = WishlistData.isWishlisted(widget.bObj["id"]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isDark ? Colors.black : Colors.white,
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              title: Text(
                widget.bObj["name"] ?? "",
                style: TextStyle(
                  color: isDark ? Colors.white : TColor.text,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              leading: IconButton(
                onPressed: () => Navigator.pop(context),
                icon: Icon(Icons.arrow_back_ios, color: TColor.primary),
              ),
              actions: [
                Switch(
                  activeThumbColor: TColor.primary,
                  value: isDark,
                  onChanged: (value) {
                    setState(() {
                      isDark = value;
                    });
                  },
                ),
                IconButton(
                  icon: Icon(Icons.settings, color: TColor.primary),
                  onPressed: () => _openSetting(context),
                ),
              ],
            )
          ];
        },
        body: _buildContent(),
      ),
    );
  }

  // ===============================
  // CONTENT
  // ===============================
  Widget _buildContent() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "${widget.bObj["author"]} • ${widget.bObj["genre"]}",
            style: TextStyle(
              color: isDark ? Colors.white70 : TColor.subTitle,
            ),
          ),
          const SizedBox(height: 10),

          Row(
            children: [
              const Icon(Icons.star, color: Colors.orange, size: 18),
              const SizedBox(width: 4),
              Text(
                widget.bObj["rating"].toString(),
                style: TextStyle(
                  color: isDark ? Colors.white : TColor.text,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(),

              /// ❤️ LOVE BUTTON
              IconButton(
                icon: Icon(
                  isLoved ? Icons.favorite : Icons.favorite_border,
                  color: Colors.redAccent,
                  size: 28,
                ),
                onPressed: () {
                  setState(() {
                    isLoved = !isLoved;
                    WishlistData.toggleWishlist(widget.bObj["id"]);
                  });

                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        isLoved
                            ? "Ditambahkan ke Wishlist"
                            : "Dihapus dari Wishlist",
                      ),
                      duration: const Duration(seconds: 1),
                    ),
                  );
                },
              ),
            ],
          ),

          const SizedBox(height: 15),

          Expanded(
            child: SingleChildScrollView(
              child: SelectableText(
                widget.bObj["synopsis"] ??
                    "Sinopsis belum tersedia.",
                style: TextStyle(
                  color: isDark ? Colors.white : TColor.text,
                  fontSize: fontSize,
                  height: 1.6,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // ===============================
  // SETTING
  // ===============================
  void _openSetting(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (_) {
        return Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            children: [
              const Icon(Icons.text_decrease),
              Expanded(
                child: Slider(
                  min: 12,
                  max: 40,
                  value: fontSize,
                  onChanged: (v) => setState(() => fontSize = v),
                ),
              ),
              const Icon(Icons.text_increase),
            ],
          ),
        );
      },
    );
  }
}
