class CartItem {
  final String imageUrl;
  final String title;
  final String subtitle;
  final int price;
  int quantity;

  CartItem({
    required this.imageUrl,
    required this.title,
    required this.subtitle,
    required this.price,
    this.quantity = 1,
  });
}