import 'package:flutter/material.dart';
import 'explore_page.dart'; // Trang khám phá
import 'bookshelf_page.dart'; // Trang tủ truyện
import 'account_page.dart'; // Trang tài khoản

void main() {
  runApp(UnibookApp());
}

class UnibookApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Unibook',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 1;

  // Danh sách các trang (Bookshelf, Explore, Ranking, Account)
  List<Widget> _screens = [
    BookshelfPage(), // Trang tủ truyện
    ExplorePage(),   // Trang khám phá (đọc truyện)
    RankingPage(),   // Trang xếp hạng
    AccountPage(),   // Trang tài khoản
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Unibook'),
      ),
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.library_books),
            label: 'Tủ Truyện',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: 'Khám phá',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'Xếp hạng',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Tài khoản',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        // Sửa đổi các icon để rõ ràng hơn
        selectedIconTheme: IconThemeData(
          color: Colors.blue,  // Màu sắc icon khi được chọn
          size: 30,            // Kích thước icon khi được chọn
        ),
        unselectedIconTheme: IconThemeData(
          color: Colors.grey,  // Màu sắc icon khi không được chọn
          size: 25,            // Kích thước icon khi không được chọn
        ),
        selectedItemColor: Colors.blue, // Màu sắc của text khi được chọn
        unselectedItemColor: Colors.grey, // Màu sắc của text khi không được chọn
        showUnselectedLabels: true, // Hiển thị text cho các trang không được chọn
        type: BottomNavigationBarType.fixed, // Hiển thị icon cố định với tất cả các trang
      ),
    );
  }
}

// Trang Xếp Hạng (tạm thời chỉ hiển thị text)
class RankingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Ranking Page'));
  }
}
