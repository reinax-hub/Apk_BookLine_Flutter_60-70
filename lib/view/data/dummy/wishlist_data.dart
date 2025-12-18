class WishlistData {
  static List<int> wishlistIds = [];

  static bool isWishlisted(int bookId) {
    return wishlistIds.contains(bookId);
  }

  static void toggleWishlist(int bookId) {
    if (wishlistIds.contains(bookId)) {
      wishlistIds.remove(bookId);
    } else {
      wishlistIds.add(bookId);
    }
  }
}
