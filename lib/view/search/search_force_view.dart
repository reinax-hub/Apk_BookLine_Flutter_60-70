import 'package:flutter/material.dart';
import '../../common/color_extenstion.dart';
import '../data/dummy/book_data.dart';

class SearchForceView extends StatefulWidget {
  final Function(String)? didSearch;
  const SearchForceView({super.key, this.didSearch});

  @override
  State<SearchForceView> createState() => _SearchForceViewState();
}

class _SearchForceViewState extends State<SearchForceView> {
  TextEditingController txtSearch = TextEditingController();

  /// previous search (dummy / local)
  List<String> previousArr = [
    "Tere Liye",
    "Andrea Hirata",
    "Fantasi",
    "Romance",
  ];

  /// hasil filter dari BookData
  List<Map<String, dynamic>> resultArr = [];

  void _onSearchChanged(String value) {
    value = value.toLowerCase();

    resultArr = BookData.allBooks.where((book) {
      final name = book["name"].toString().toLowerCase();
      final author = book["author"].toString().toLowerCase();
      return name.contains(value) || author.contains(value);
    }).toList();

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Container(),
        leadingWidth: 0,
        title: Row(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: TColor.textbox,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextField(
                  controller: txtSearch,
                  onChanged: _onSearchChanged,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 8),
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    prefixIcon: Icon(Icons.search, color: TColor.text),
                    hintText: "Search by title or author",
                  ),
                ),
              ),
            ),
            const SizedBox(width: 8),
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text(
                "Cancel",
                style: TextStyle(color: TColor.text, fontSize: 17),
              ),
            )
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// PREVIOUS SEARCH
          if (txtSearch.text.isEmpty)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
              child: Text(
                "Previous Searches",
                style: TextStyle(
                  color: TColor.subTitle,
                  fontSize: 13,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),

          Expanded(
            child: ListView.builder(
              padding:
                  const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
              itemCount: txtSearch.text.isEmpty
                  ? previousArr.length
                  : resultArr.length,
              itemBuilder: (context, index) {
                /// MODE PREVIOUS
                if (txtSearch.text.isEmpty) {
                  final text = previousArr[index];
                  return _rowItem(
                    title: text,
                    onTap: () {
                      widget.didSearch?.call(text);
                      Navigator.pop(context);
                    },
                  );
                }

                /// MODE RESULT
                final book = resultArr[index];
                return _rowItem(
                  title: book["name"],
                  subtitle: book["author"],
                  onTap: () {
                    widget.didSearch?.call(txtSearch.text);
                    Navigator.pop(context);
                  },
                );
              },
            ),
          )
        ],
      ),
    );
  }

  Widget _rowItem({
    required String title,
    String? subtitle,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: Row(
          children: [
            Icon(Icons.search, color: TColor.subTitle),
            const SizedBox(width: 20),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,
                      style:
                          TextStyle(color: TColor.text, fontSize: 15)),
                  if (subtitle != null)
                    Text(subtitle,
                        style: TextStyle(
                            color: TColor.subTitle, fontSize: 13)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
