class CartData {
  static List<Map<String, dynamic>> cartBooks = [];

  static void addToCart(int bookId) {
    final index = cartBooks.indexWhere((e) => e["id"] == bookId);

    if (index != -1) {
      cartBooks[index]["qty"]++;
    } else {
      cartBooks.add({
        "id": bookId,
        "qty": 1,
      });
    }
  }

  static void removeFromCart(int bookId) {
    cartBooks.removeWhere((e) => e["id"] == bookId);
  }

  static void clearCart() {
    cartBooks.clear();
  }
}
