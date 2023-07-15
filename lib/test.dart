import 'package:flutter/material.dart';

class CyberpunkPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('赛博朋克页面'),
      ),
      body: Transform(
        transform: Matrix4.identity()
          ..setEntry(3, 2, 0.003) // 透视效果
          ..rotateX(0.3), // 绕X轴旋转
        alignment: FractionalOffset.center,
        child: Container(
          color: Colors.black,
          child: ListView.builder(
            itemCount: imageList.length,
            itemBuilder: (context, index) {
              final imageUrl = imageList[index];
              return Container(
                margin: EdgeInsets.symmetric(vertical: 8.0),
                height: 200.0,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Image.network(
                      imageUrl,
                      fit: BoxFit.cover,
                    ),
                    Positioned.fill(
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Colors.transparent, Colors.black87],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 16.0,
                      left: 16.0,
                      child: Text(
                        'Image $index',
                        style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

List<String> imageList = [
  'https://example.com/image1.jpg',
  'https://example.com/image2.jpg',
  'https://example.com/image3.jpg',
  // 添加更多图片URL...
];
