import 'package:flutter/material.dart';

class BookshelfPage extends StatefulWidget {
  @override
  _BookshelfPageState createState() => _BookshelfPageState();
}

class _BookshelfPageState extends State<BookshelfPage> with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tủ Truyện'),
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(text: 'Lịch sử'),
            Tab(text: 'Đánh dấu'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          // Tab Lịch sử
          ListView(
            children: [
              _buildBookItem('Bế Quan Ngàn Năm, Dao Trì Bạn Gái Mời Ta Rời Núi', '564/564'),
              _buildBookItem('Độc cổ Ma Tiên', '465/465'),
              _buildBookItem('trọng sinh ta giúp MU vô địch', '1/797'),
              _buildBookItem('Tái sinh đả bại Faker ta trở thành huyền thoại', '800/1081'),
            ],
          ),
          // Tab Đánh dấu
          Center(child: Text('Đánh dấu trống')),
        ],
      ),
    );
  }

  Widget _buildBookItem(String title, String progress) {
    return ListTile(
      leading: Icon(Icons.book),
      title: Text(title),
      subtitle: Text('Đã đọc $progress'),
      trailing: Icon(Icons.more_vert),
      onTap: () {
        // Điều hướng đến trang chi tiết truyện
      },
    );
  }
}
