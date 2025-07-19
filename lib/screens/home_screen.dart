import 'package:flutter/material.dart';
import '../models/product_model.dart';
import '../widgets/product_card.dart';
import '../widgets/category_chip.dart';
import './cart_screen.dart';

class HomeScreen extends StatefulWidget {
  final String title;
  
  const HomeScreen({super.key, required this.title});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String searchQuery = "";
  String selectedCategory = "All";
  final List<String> categories = [
    "All", "Fruits", "Vegetables", "Dairy", "Beverages", "Snacks"
  ];

  @override
  Widget build(BuildContext context) {
    final filteredProducts = Product.sampleProducts.where((product) {
      final matchesSearch = product.name.toLowerCase().contains(searchQuery.toLowerCase());
      final matchesCategory = selectedCategory == "All" || product.category == selectedCategory;
      return matchesSearch && matchesCategory;
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const CartScreen())),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search products...",
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.grey[200],
                contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
              ),
              onChanged: (value) => setState(() => searchQuery = value),
            ),
          ),
          SizedBox(
            height: 50,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              itemCount: categories.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: CategoryChip(
                    category: categories[index],
                    isSelected: selectedCategory == categories[index],
                    onSelected: () => setState(() => selectedCategory = categories[index]),
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 16),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: filteredProducts.isEmpty
                  ? const Center(child: Text("No products found", style: TextStyle(fontSize: 18, color: Colors.grey)))
                  : GridView.builder(
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 16,
                        mainAxisSpacing: 16,
                        childAspectRatio: 0.63, // Fixed aspect ratio value
                      ),
                      itemCount: filteredProducts.length,
                      itemBuilder: (context, index) => ProductCard(product: filteredProducts[index]),
                    ),
            ),
          ),
        ],
      ),
    );
  }
}