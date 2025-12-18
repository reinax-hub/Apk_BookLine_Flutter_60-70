import 'package:flutter/material.dart';
import '../../common/color_extenstion.dart';
import '../data/dummy/book_data.dart';
import '../data/dummy/book_detail_view.dart';

class CartView extends StatefulWidget {
  const CartView({super.key});

  @override
  State<CartView> createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  List<Map<String, dynamic>> cartBooks = [
    {"id": 1, "qty": 1},
  ];

 int get totalPrice {
  int total = 0;

  for (var item in cartBooks) {
    final book = BookData.allBooks.firstWhere(
      (b) => b["id"] == item["id"],
      orElse: () => {},
    );

    if (book.isEmpty) continue;

    final int price = book["price"] ?? 0;
    final int qty = item["qty"] ?? 0;

    total += price * qty;
  }

  return total;
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Cart",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: TColor.primary,
      ),

      body: cartBooks.isEmpty
          ? _emptyCart()
          : Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    padding: const EdgeInsets.all(16),
                    itemCount: cartBooks.length,
                    itemBuilder: (context, index) {
                      final item = cartBooks[index];
                      final book = BookData.allBooks.firstWhere(
                        (b) => b["id"] == item["id"],
                      );

                      return _cartItem(book, item, index);
                    },
                  ),
                ),
                _checkoutSection(),
              ],
            ),
    );
  }

  // ===========================
  // CART ITEM CARD
  // ===========================
  Widget _cartItem(
      Map<String, dynamic> book, Map<String, dynamic> item, int index) {
    final int itemTotal = book["price"] * item["qty"];

    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => BookDetailView(book: book),
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 16),
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 8,
              offset: Offset(0, 4),
            )
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// COVER
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                book["img"],
                width: 90,
                height: 130,
                fit: BoxFit.cover,
              ),
            ),

            const SizedBox(width: 14),

            /// INFO
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    book["name"],
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),

                  const SizedBox(height: 4),

                  Text(
                    book["author"],
                    style: TextStyle(
                      color: TColor.subTitle,
                      fontSize: 13,
                    ),
                  ),

                  const SizedBox(height: 6),

                  Row(
                    children: [
                      const Icon(Icons.star,
                          color: Colors.orange, size: 16),
                      const SizedBox(width: 4),
                      Text(book["rating"].toString()),
                    ],
                  ),

                  const SizedBox(height: 10),

                  Text(
                    "Rp ${book["price"]}",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: TColor.primary,
                    ),
                  ),

                  const SizedBox(height: 10),

                  /// QTY
                  Row(
                    children: [
                      _qtyButton(
                        icon: Icons.remove,
                        onTap: () {
                          if (item["qty"] > 1) {
                            setState(() => item["qty"]--);
                          }
                        },
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.symmetric(horizontal: 12),
                        child: Text(
                          item["qty"].toString(),
                          style: const TextStyle(
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      _qtyButton(
                        icon: Icons.add,
                        onTap: () {
                          setState(() => item["qty"]++);
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),

            /// DELETE
            IconButton(
              icon: const Icon(Icons.delete, color: Colors.red),
              onPressed: () {
                setState(() => cartBooks.removeAt(index));
              },
            ),
          ],
        ),
      ),
    );
  }

  // ===========================
  // CHECKOUT SECTION
  // ===========================
  Widget _checkoutSection() {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
            offset: Offset(0, -3),
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Total"),
              Text(
                "Rp $totalPrice",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: TColor.primary,
                ),
              ),
            ],
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: TColor.primary,
              padding: const EdgeInsets.symmetric(
                  horizontal: 26, vertical: 14),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14),
              ),
            ),
            onPressed: () {},
            child: const Text(
              "Checkout",
              style: TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }

  Widget _qtyButton({required IconData icon, required VoidCallback onTap}) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(6),
        decoration: BoxDecoration(
          border: Border.all(color: TColor.primary),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Icon(icon, size: 16),
      ),
    );
  }

  Widget _emptyCart() {
    return Center(
      child: Text(
        "Keranjang masih kosong",
        style: TextStyle(
          color: TColor.subTitle,
          fontSize: 16,
        ),
      ),
    );
  }
}
