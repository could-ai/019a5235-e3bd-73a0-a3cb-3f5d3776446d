import 'package:flutter/material.dart';
import '../models/stock.dart';
import '../widgets/stock_list_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Stock> _watchlist = [
    Stock(symbol: 'RELIANCE', companyName: 'Reliance Industries Ltd', price: 2850.55, change: 25.30, changePercentage: 0.89),
    Stock(symbol: 'TCS', companyName: 'Tata Consultancy Services Ltd', price: 3825.10, change: -15.75, changePercentage: -0.41),
    Stock(symbol: 'HDFCBANK', companyName: 'HDFC Bank Ltd', price: 1650.75, change: 5.20, changePercentage: 0.32),
    Stock(symbol: 'INFY', companyName: 'Infosys Ltd', price: 1510.20, change: -8.90, changePercentage: -0.58),
    Stock(symbol: 'ICICIBANK', companyName: 'ICICI Bank Ltd', price: 1125.40, change: 12.10, changePercentage: 1.09),
    Stock(symbol: 'HINDUNILVR', companyName: 'Hindustan Unilever Ltd', price: 2450.00, change: 30.50, changePercentage: 1.26),
    Stock(symbol: 'BHARTIARTL', companyName: 'Bharti Airtel Ltd', price: 1210.80, change: -4.25, changePercentage: -0.35),
    Stock(symbol: 'SBIN', companyName: 'State Bank of India', price: 760.90, change: 7.80, changePercentage: 1.03),
    Stock(symbol: 'ITC', companyName: 'ITC Ltd', price: 430.65, change: 1.40, changePercentage: 0.33),
    Stock(symbol: 'LICI', companyName: 'Life Insurance Corporation of India', price: 975.30, change: -10.15, changePercentage: -1.03),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Markets'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // Handle search action
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: _watchlist.length,
        itemBuilder: (context, index) {
          return StockListItem(stock: _watchlist[index]);
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFF1B232A),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey[600],
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark_border),
            activeIcon: Icon(Icons.bookmark),
            label: 'Watchlist',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_basket_outlined),
            activeIcon: Icon(Icons.shopping_basket),
            label: 'Orders',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.pie_chart_outline),
            activeIcon: Icon(Icons.pie_chart),
            label: 'Portfolio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.trending_up),
            activeIcon: Icon(Icons.trending_up),
            label: 'Tools',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            activeIcon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
