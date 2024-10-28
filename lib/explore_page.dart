import 'package:flutter/material.dart';

class ExplorePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Tiêu đề lớn
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Khám phá', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          ),

          // Truyện mới nhất
          Container(
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                _buildStoryCard('Xuyên Việt Bất Đấu Thành', 'assets/images/story1.png'),
                _buildStoryCard('Hỗn Độn Thiên Đế Quyết', 'assets/images/story1.png'),
                _buildStoryCard('Ta Tu Quy Đêm Tiên Triều', 'assets/images/story1.png'),
              ],
            ),
          ),

          // Truyện đề cử
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Đề cử', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          ),
          ListTile(
            leading: Image.asset('assets/images/story1.png', fit: BoxFit.cover),
            title: Text('Lão Bà Tỏ Tình Với Tôi'),
            subtitle: Text('Một câu chuyện đầy thú vị về...'),
            trailing: Icon(Icons.chevron_right),
            onTap: () {
              // Hành động khi chọn truyện
            },
          ),
        ],
      ),
    );
  }

  // Widget cho từng truyện
  Widget _buildStoryCard(String title, String imagePath) {
    return Container(
      width: 150,
      margin: EdgeInsets.all(8.0),
      child: Column(
        children: [
          Image.asset(imagePath, fit: BoxFit.cover, height: 120),
          SizedBox(height: 8),
          Text(title, style: TextStyle(fontWeight: FontWeight.bold), textAlign: TextAlign.center),
        ],
      ),
    );
  }
}
