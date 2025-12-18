import 'package:flutter/material.dart';
import '../../common/color_extenstion.dart';
import '../data/dummy/book_data.dart';
import '../data/dummy/cart_data.dart';
import '../data/dummy/book_detail_view.dart';

class CartView extends StatefulWidget {
  const CartView({super.key});

  @override
  State<CartView> createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  List<Map<String, dynamic>> cartBooks = CartData.cartBooks;

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

  Widget _cartItem(
      Map<String, dynamic> book, Map<String, dynamic> item, int index) {
    return Container(
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
        children: [
          Image.asset(book["img"], width: 90, height: 130, fit: BoxFit.cover),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(book["name"],
                    style: const TextStyle(fontWeight: FontWeight.bold)),
                const SizedBox(height: 6),
                Text("Rp ${book["price"]}",
                    style: TextStyle(
                        color: TColor.primary,
                        fontWeight: FontWeight.bold)),
                const SizedBox(height: 10),
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
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Text(item["qty"].toString()),
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
          IconButton(
            icon: const Icon(Icons.delete, color: Colors.red),
            onPressed: () {
              setState(() {
                CartData.removeFromCart(book["id"]);
              });
            },
          ),
        ],
      ),
    );
  }

  Widget _checkoutSection() {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Total: Rp $totalPrice",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: TColor.primary,
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: TColor.primary,
            ),
            onPressed: () {},
            child: const Text("Checkout",
                style: TextStyle(color: Colors.white)),
          ),
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
        style: TextStyle(color: TColor.subTitle),
      ),
    );
  }
}
