import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);  // Go back to the previous screen
          },
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/logo.png', height: 100),  // Add your logo asset
            TextField(
              decoration: InputDecoration(labelText: 'Email', prefixIcon: Icon(Icons.email)),
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(labelText: 'Mật khẩu', prefixIcon: Icon(Icons.lock)),
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(labelText: 'Xác nhận mật khẩu mới', prefixIcon: Icon(Icons.lock)),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Handle signup logic
              },
              child: Text('Đăng ký'),
            ),
            SizedBox(height: 20),
            Text.rich(
              TextSpan(
                text: 'Khi bạn nhấn đăng ký mặc nhiên được coi là đồng ý với ',
                children: [
                  TextSpan(
                    text: 'Chính sách bảo mật',
                    style: TextStyle(color: Colors.blue),
                    // Add a gesture detector or link
                  ),
                  TextSpan(text: ' cùng '),
                  TextSpan(
                    text: 'Điều khoản và điều kiện',
                    style: TextStyle(color: Colors.blue),
                    // Add a gesture detector or link
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
