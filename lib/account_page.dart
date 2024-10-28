import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart'; // Import gói FontAwesome
class AccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'MVUCn05496',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 5),
                    CircleAvatar(
                      radius: 35,
                      backgroundColor: Colors.grey[300],
                      child: Icon(Icons.person, size: 40),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.notifications, color: Colors.red),
                    Text('0', style: TextStyle(color: Colors.red)),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Icon(FontAwesomeIcons.candyCane, color: Colors.orange),
                    Text('0'),
                  ],
                ),

                Column(
                  children: [
                    Icon(Icons.local_activity, color: Colors.amber),
                    Text('1'),
                  ],
                ),
              ],
            ),
            SizedBox(height: 30),
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    title: Text('Thông tin tài khoản'),
                    trailing: Icon(Icons.chevron_right),
                    onTap: () {
                      // Navigation logic if needed
                    },
                  ),
                  ListTile(
                    title: Text('Lịch sử giao dịch'),
                    trailing: Icon(Icons.chevron_right),
                    onTap: () {
                      // Navigation logic if needed
                    },
                  ),
                  ListTile(
                    title: Text('Nâng cấp tài khoản'),
                    trailing: Icon(Icons.chevron_right),
                    onTap: () {
                      // Navigation logic if needed
                    },
                  ),
                  ListTile(
                    title: Text('Cài đặt cá nhân'),
                    trailing: Icon(Icons.chevron_right),
                    onTap: () {
                      // Navigation logic if needed
                    },
                  ),
                  ListTile(
                    title: Text('Cấu hình ứng dụng'),
                    trailing: Icon(Icons.chevron_right),
                    onTap: () {
                      // Navigation logic if needed
                    },
                  ),
                  ListTile(
                    title: Text('Xóa cache'),
                    trailing: Icon(Icons.chevron_right),
                    onTap: () {
                      // Clear cache logic
                    },
                  ),
                  ListTile(
                    title: Text('Mua khoai'),
                    trailing: Icon(Icons.chevron_right),
                    onTap: () {
                      // Purchase logic if needed
                    },
                  ),
                  ListTile(
                    title: Text('Hướng dẫn sử dụng'),
                    trailing: Icon(Icons.chevron_right),
                    onTap: () {
                      // Navigate to user guide
                    },
                  ),
                  ListTile(
                    title: Text('Liên hệ hỗ trợ'),
                    trailing: Icon(Icons.chevron_right),
                    onTap: () {
                      // Support navigation
                    },
                  ),
                  ListTile(
                    title: Text('Thoát'),
                    trailing: Icon(Icons.chevron_right),
                    onTap: () {// Khi nhấn nút Thoát, chuyển hướng về trang đăng nhập
                      Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) => LoginScreen()),
                      );
                      // Exit logic
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
