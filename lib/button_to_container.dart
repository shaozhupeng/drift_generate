import 'package:flutter/material.dart';

class FullScreenButtonPage extends StatefulWidget {
  @override
  _FullScreenButtonPageState createState() => _FullScreenButtonPageState();
}

class _FullScreenButtonPageState extends State<FullScreenButtonPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  double _buttonSize = 64.0;
  double _expandedSize = 0.0;

  bool _isButtonClicked = false;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );

    _animation = Tween<double>(begin: 0, end: 1.0).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    ));

    _animationController.addListener(() {
      setState(() {});
    });

    _animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        setState(() {
          _expandedSize = MediaQuery.of(context).size.width;
        });
      }
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _handleButtonClick() {
    setState(() {
      _isButtonClicked = true;
      _animationController.forward();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('全屏按钮页面'),
      ),
      body: Stack(
        children: [
          if (!_isButtonClicked)
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(bottom: 16.0),
                child: ElevatedButton(
                  onPressed: _handleButtonClick,
                  child: Text('点击我'),
                ),
              ),
            ),
          Positioned(
            left: (MediaQuery.of(context).size.width - _expandedSize) / 2,
            top: (MediaQuery.of(context).size.height - _expandedSize) / 2,
            child: GestureDetector(
              onTap: () {
                // 在这里可以添加点击全屏Container后的相关操作
              },
              child: Container(
                color: Colors.blue,
                width: _animation.value * MediaQuery.of(context).size.width,
                height: _animation.value * MediaQuery.of(context).size.height,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
