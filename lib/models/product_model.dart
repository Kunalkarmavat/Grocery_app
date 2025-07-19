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
      desc: "Fresh and juicy apples from Kashmir. Rich in antioxidants and dietary fiber. Perfect for snacks and desserts.",
      image: "https://images.pexels.com/photos/1510392/pexels-photo-1510392.jpeg?cs=srgb&dl=pexels-suzyhazelwood-1510392.jpg&fm=jpg",
    ),
    Product(
      name: "Bananas",
      category: "Fruits",
      price: 60,
      unit: "dozen",
      rating: 4.2,
      desc: "Sweet and ripe bananas for your diet. Excellent source of potassium and vitamin B6. Naturally fat-free and cholesterol-free.",
      image: "https://images.unsplash.com/photo-1571771894821-ce9b6c11b08e?auto=format&fit=crop&w=300&q=80",
    ),
    Product(
      name: "Tomato",
      category: "Vegetables",
      price: 40,
      unit: "kg",
      rating: 4.3,
      desc: "Organic red tomatoes rich in lycopene. Great for salads, sauces, and cooking. Packed with vitamin C and K.",
      image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQMyFxw408GVqWfdVcoWMwIO26PRfHz9sDJGQ&s",
    ),
    Product(
      name: "Carrots",
      category: "Vegetables",
      price: 30,
      unit: "kg",
      rating: 4.7,
      desc: "Crunchy carrots full of vitamin A. Sweet flavor and perfect for juicing. Good for eyesight and skin health.",
      image: "https://images.unsplash.com/photo-1598170845058-32b9d6a5da37?auto=format&fit=crop&w=300&q=80",
    ),
    Product(
      name: "Milk",
      category: "Dairy",
      price: 50,
      unit: "liter",
      rating: 4.8,
      desc: "Fresh and pure cow milk. Pasteurized and homogenized. Rich in calcium and vitamin D for strong bones.",
      image: "https://images.unsplash.com/photo-1550583724-b2692b85b150?auto=format&fit=crop&w=300&q=80",
    ),
    Product(
      name: "Juice",
      category: "Beverages",
      price: 80,
      unit: "bottle",
      rating: 4.4,
      desc: "100% natural orange juice with no added sugar. Rich in vitamin C. Refreshing and energizing.",
      image: "https://images.unsplash.com/photo-1603569283847-aa295f0d016a?auto=format&fit=crop&w=300&q=80",
    ),
    Product(
      name: "Chips",
      category: "Snacks",
      price: 40,
      unit: "pack",
      rating: 4.1,
      desc: "Crispy potato chips with sea salt. Made from real potatoes. Perfect snack for movie nights.",
      image: "https://images.unsplash.com/photo-1621447504864-d8686e12698c?auto=format&fit=crop&w=300&q=80",
    ),
    Product(
      name: "Yogurt",
      category: "Dairy",
      price: 70,
      unit: "pack",
      rating: 4.6,
      desc: "Creamy Greek yogurt with live cultures. High in protein and probiotics. Great for breakfast or snacks.",
      image: "https://images.unsplash.com/photo-1598208577606-c617e86b2d11?auto=format&fit=crop&w=300&q=80",
    ),
    Product(
      name: "Strawberries",
      category: "Fruits",
      price: 150,
      unit: "kg",
      rating: 4.9,
      desc: "Sweet and juicy strawberries packed with antioxidants. Perfect for desserts, smoothies, or eating fresh.",
      image: "https://images.unsplash.com/photo-1464965911861-746a04b4bca6?auto=format&fit=crop&w=300&q=80",
    ),
    Product(
      name: "Broccoli",
      category: "Vegetables",
      price: 70,
      unit: "kg",
      rating: 4.0,
      desc: "Nutrient-rich broccoli with high levels of vitamins C and K. Great steamed, roasted, or in stir-fries.",
      image: "https://images.unsplash.com/photo-1518977676601-b53f82aba655?auto=format&fit=crop&w=300&q=80",
    ),
    Product(
      name: "Water",
      category: "Beverages",
      price: 25,
      unit: "bottle",
      rating: 4.3,
      desc: "Pure mineral water sourced from natural springs. Essential for hydration and maintaining body balance.",
      image: "https://images.unsplash.com/photo-1548839140-29a749e72315?auto=format&fit=crop&w=300&q=80",
    ),
  ];
}