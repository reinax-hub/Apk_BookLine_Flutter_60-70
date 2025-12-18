import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'package:book_grocer/common/color_extenstion.dart';
import 'package:book_grocer/view/book_reading/book_reading_view.dart';
import 'package:book_grocer/view/data/dummy/book_data.dart';
import 'package:book_grocer/view/login/sign_up_view.dart';
import 'package:book_grocer/view/main_tab/main_tab_view.dart';

import '../../common_widget/best_seller_cell.dart';
import '../../common_widget/genres_cell.dart';
import '../../common_widget/recently_cell.dart';
import '../../common_widget/round_button.dart';
import '../../common_widget/round_textfield.dart';
import '../../common_widget/top_picks_cell.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  TextEditingController txtName = TextEditingController();
  TextEditingController txtEmail = TextEditingController();

  // ===== DATA =====
  final List topPicksArr = BookData.allBooks.take(5).toList();
  final List bestArr = BookData.allBooks;
  
  // Genre yang akan ditampilkan (setiap genre menampilkan 3 buku)
  final List<String> genreList = ["Fantasi", "Romance", "Misteri", "Inspiratif", "Fiksi","Sastra","Sejarah","Biografi","Horror"];
  
  // Recently Viewed - ambil dari allBooks jika recentBooks kosong
  late final List recentArr;

  @override
  void initState() {
    super.initState();
    // Inisialisasi recentArr - jika recentBooks kosong, ambil dari allBooks
    recentArr = BookData.recentBooks.isNotEmpty 
        ? BookData.recentBooks 
        : BookData.allBooks.take(4).toList();
  }

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Align(
                  child: Transform.scale(
                    scale: 1.5,
                    origin: Offset(0, media.width * 0.8),
                    child: Container(
                      width: media.width,
                      height: media.width,
                      decoration: BoxDecoration(
                        color: TColor.primary,
                        borderRadius:
                            BorderRadius.circular(media.width * 0.5),
                      ),
                    ),
                  ),
                ),

                // ================= CONTENT =================
                Column(
                  children: [
                    SizedBox(height: media.width * 0.1),

                    // ===== APP BAR dengan Nama Aplikasi =====
                    AppBar(
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                      title: Row(
                        children: [
                          Text(
                            "Book",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            "Line",
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.8),
                              fontSize: 24,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      leading: const SizedBox(),
                      actions: [
                        IconButton(
                          onPressed: () {
                            sideMenuScaffoldKey.currentState
                                ?.openEndDrawer();
                          },
                          icon: const Icon(Icons.menu),
                        )
                      ],
                    ),

                    // ===== SUBTITLE TOP PICKS =====
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Our Top Picks",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),

                    // ===== TOP PICKS (CAROUSEL) - Ukuran Diperbaiki =====
                    SizedBox(
                      width: media.width,
                      height: media.width * 0.75, // Dikurangi untuk menghindari overflow
                      child: CarouselSlider.builder(
                        itemCount: topPicksArr.length,
                        itemBuilder: (context, index, _) {
                          final bObj = topPicksArr[index];
                          return GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) =>
                                      BookReadingView(bObj: bObj),
                                ),
                              );
                            },
                            child: TopPicksCell(iObj: bObj),
                          );
                        },
                        options: CarouselOptions(
                          autoPlay: false,
                          enlargeCenterPage: true,
                          viewportFraction: 0.45,
                          height: media.width * 0.75,
                        ),
                      ),
                    ),

                    SizedBox(height: 20),

                    // ===== BESTSELLERS =====
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Bestsellers",
                          style: TextStyle(
                            color: TColor.text,
                            fontSize: 22,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),

                    SizedBox(
                      height: media.width * 0.9,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        padding: const EdgeInsets.symmetric(
                            vertical: 15, horizontal: 8),
                        itemCount: bestArr.length,
                        itemBuilder: (context, index) {
                          final bObj = bestArr[index];
                          return GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) =>
                                      BookReadingView(bObj: bObj),
                                ),
                              );
                            },
                            child: BestSellerCell(bObj: bObj),
                          );
                        },
                      ),
                    ),

                    // ===== GENRES - Setiap Bar = 1 Genre dengan 3 Buku =====
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Genres",
                          style: TextStyle(
                            color: TColor.text,
                            fontSize: 22,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),

                    SizedBox(
                      height: media.width * 0.55,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        padding: const EdgeInsets.symmetric(
                            vertical: 15, horizontal: 15),
                        itemCount: genreList.length,
                        itemBuilder: (context, index) {
                          final genre = genreList[index];
                          final genreBooks = BookData.byGenre(genre).take(3).toList();
                          
                          return Container(
                            width: media.width * 0.85,
                            margin: const EdgeInsets.only(right: 15),
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: index % 2 == 0
                                  ? TColor.color1.withOpacity(0.2)
                                  : TColor.color2.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  genre,
                                  style: TextStyle(
                                    color: TColor.text,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Expanded(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: genreBooks.map((bObj) {
                                      return GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (_) =>
                                                  BookReadingView(bObj: bObj),
                                            ),
                                          );
                                        },
                                        child: Container(
                                          width: (media.width * 0.85 - 60) / 3,
                                          child: Column(
                                            children: [
                                              Expanded(
                                                child: ClipRRect(
                                                  borderRadius: BorderRadius.circular(8),
                                                  child: Image.asset(
                                                    bObj["img"],
                                                    fit: BoxFit.cover,
                                                    width: double.infinity,
                                                    errorBuilder: (context, error, stackTrace) {
                                                      return Container(
                                                        color: Colors.grey[300],
                                                        child: Icon(Icons.book, color: Colors.grey),
                                                      );
                                                    },
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(height: 5),
                                              Text(
                                                bObj["name"] ?? "",
                                                maxLines: 1,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: TColor.text,
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    }).toList(),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),

                    // ===== RECENTLY VIEWED - Diperbaiki =====
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Recently Viewed",
                          style: TextStyle(
                            color: TColor.text,
                            fontSize: 22,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),

                    // Cek apakah data ada
                    recentArr.isEmpty 
                      ? Padding(
                          padding: const EdgeInsets.all(20),
                          child: Text(
                            "No recently viewed books",
                            style: TextStyle(
                              color: TColor.subTitle,
                              fontSize: 14,
                            ),
                          ),
                        )
                      : Container(
                          height: 250,
                          margin: const EdgeInsets.only(bottom: 20),
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            itemCount: recentArr.length,
                            itemBuilder: (context, index) {
                              final bObj = recentArr[index];

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
                                  width: 120,
                                  margin: const EdgeInsets.only(right: 15),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      // Cover Image
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.asset(
                                          bObj["img"],
                                          width: 120,
                                          height: 160,
                                          fit: BoxFit.cover,
                                          errorBuilder: (context, error, stackTrace) {
                                            return Container(
                                              width: 120,
                                              height: 160,
                                              color: Colors.grey[300],
                                              child: Icon(Icons.book, size: 50, color: Colors.grey),
                                            );
                                          },
                                        ),
                                      ),
                                      const SizedBox(height: 8),
                                      // Title
                                      Text(
                                        bObj["name"] ?? "Unknown",
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          color: TColor.text,
                                          fontSize: 13,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      const SizedBox(height: 4),
                                      // Author
                                      Text(
                                        bObj["author"] ?? "",
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

                    // ===== NEWSLETTER =====
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Monthly Newsletter",
                          style: TextStyle(
                            color: TColor.text,
                            fontSize: 22,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),

                    Container(
                      margin: const EdgeInsets.all(20),
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: TColor.textbox.withOpacity(0.4),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        children: [
                          Text(
                            "Receive our monthly newsletter and receive updates on new stock, books and promotions.",
                            style: TextStyle(
                              color: TColor.subTitle,
                              fontSize: 12,
                            ),
                          ),
                          const SizedBox(height: 15),
                          RoundTextField(
                            controller: txtName,
                            hintText: "Name",
                          ),
                          const SizedBox(height: 15),
                          RoundTextField(
                            controller: txtEmail,
                            hintText: "Email Address",
                          ),
                          const SizedBox(height: 15),
                          Align(
                            alignment: Alignment.centerRight,
                            child: MiniRoundButton(
                              title: "Sign Up",
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (_) => const SignUpView(),
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: media.width * 0.1),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}