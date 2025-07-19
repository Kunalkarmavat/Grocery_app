class Product {
  final String name;
  final String category;
  final double price;
  final String unit;
  final double rating;
  final String desc;
  final String image;

  Product({
    required this.name,
    required this.category,
    required this.price,
    required this.unit,
    required this.rating,
    required this.desc,
    required this.image,
  });

  static List<Product> sampleProducts = [
    Product(
      name: "Apples",
      category: "Fruits",
      price: 100,
      unit: "kg",
      rating: 4.5,
      desc: "Fresh and juicy apples from Kashmir...",
      image: "https://img.freepik.com/free-psd/close-up-delicious-apple_23-2151868338.jpg",
    ),
    Product(
      name: "Bananas",
      category: "Fruits",
      price: 60,
      unit: "dozen",
      rating: 4.2,
      desc: "Sweet and ripe bananas for your diet...",
      image: "https://images.unsplash.com/photo-1574226516831-e1dff420e9a0?auto=format&fit=crop&w=500&q=80",
    ),
    // ADD ALL OTHER PRODUCTS HERE
    Product(
      name: "Strawberries",
      category: "Fruits",
      price: 150,
      unit: "kg",
      rating: 4.9,
      desc: "Sweet and juicy strawberries packed with antioxidants...",
      image: "https://images.unsplash.com/photo-1464965911861-746a04b4bca6?auto=format&fit=crop&w=500&q=80",
    ),
    Product(
      name: "Broccoli",
      category: "Vegetables",
      price: 70,
      unit: "kg",
      rating: 4.0,
      desc: "Nutrient-rich broccoli with high levels of vitamins...",
      image: "https://images.unsplash.com/photo-1518977676601-b53f82aba655?auto=format&fit=crop&w=500&q=80",
    ),
    Product(
      name: "Mineral Water",
      category: "Beverages",
      price: 25,
      unit: "bottle",
      rating: 4.3,
      desc: "Pure mineral water sourced from natural springs...",
      image: "https://images.unsplash.com/photo-1548839140-29a749e72315?auto=format&fit=crop&w=500&q=80",
    ),
  ];
}