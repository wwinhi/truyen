import 'package:flutter/material.dart';
import 'signup_screen.dart';
import 'main.dart';
class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.close),
          onPressed: () {
            // Close the login screen
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
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => UnibookApp()),
                );
              },
              child: Text('Đăng nhập'),
            ),
            SizedBox(height: 10),
            ElevatedButton.icon(
              onPressed: () {
                // Handle Google login
              },
              icon: Icon(Icons.account_circle),
              label: Text('Đăng nhập với Google'),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black, backgroundColor: Colors.white,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                // Navigate to Signup screen
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignupScreen()),
                );
              },
              child: Text('Đăng ký'),
            ),
            SizedBox(height: 20),
            Text.rich(
              TextSpan(
                text: 'Khi bạn nhấn đăng nhập mặc nhiên được coi là đồng ý với ',
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
