import 'package:flutter/material.dart';

class CareerSelectionPage extends StatefulWidget {
  @override
  _CareerSelectionPageState createState() => _CareerSelectionPageState();
}

class _CareerSelectionPageState extends State<CareerSelectionPage> {
  List<String> selectedCareers = [];
  TextEditingController customCareerController = TextEditingController();
  FocusNode customCareerFocusNode = FocusNode();

  void toggleCareer(String career) {
    if (selectedCareers.contains(career)) {
      setState(() {
        selectedCareers.remove(career);
      });
    } else {
      setState(() {
        selectedCareers.add(career);
      });
    }
  }

  void addCustomCareer() {
    String customCareer = customCareerController.text.trim();
    if (customCareer.isNotEmpty && !selectedCareers.contains(customCareer)) {
      setState(() {
        selectedCareers.add(customCareer);
      });
      customCareerController.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('选择职业'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              '选择或输入职业',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16.0),
            Expanded(
              child: ListView(
                children: [
                  CareerCategory(
                    categoryName: '技术',
                    careers: [
                      '软件工程师',
                      '前端开发工程师',
                      '后端开发工程师',
                      // Add more careers in this category
                    ],
                    isSelected: selectedCareers,
                    onToggle: toggleCareer,
                  ),
                  CareerCategory(
                    categoryName: '设计',
                    careers: [
                      'UI设计师',
                      'UX设计师',
                      '平面设计师',
                      // Add more careers in this category
                    ],
                    isSelected: selectedCareers,
                    onToggle: toggleCareer,
                  ),
                  // Add more career categories as needed
                ],
              ),
            ),
            SizedBox(height: 16.0),
            TextFormField(
              focusNode: customCareerFocusNode,
              controller: customCareerController,
              decoration: InputDecoration(
                hintText: '请输入职业',
                suffixIcon: IconButton(
                  icon: Icon(Icons.add),
                  splashRadius: 20.0,
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  enableFeedback: false,
                  onPressed: () {
                    if (customCareerFocusNode.hasFocus) {
                      customCareerFocusNode.unfocus();
                    }
                    addCustomCareer();
                  },
                ),
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              '已选择的职业:',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            Wrap(
              spacing: 8.0,
              runSpacing: 8.0,
              children: selectedCareers.map((career) {
                return SelectedCareerItem(
                  career: career,
                  onTap: toggleCareer,
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}

class CareerCategory extends StatefulWidget {
  final String categoryName;
  final List<String> careers;
  final List<String> isSelected;
  final Function(String) onToggle;

  CareerCategory({
    required this.categoryName,
    required this.careers,
    required this.isSelected,
    required this.onToggle,
  });

  @override
  _CareerCategoryState createState() => _CareerCategoryState();
}

class _CareerCategoryState extends State<CareerCategory> {
  bool isExpanded = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              isExpanded = !isExpanded;
            });
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.categoryName,
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
              Icon(
                isExpanded ? Icons.expand_less : Icons.expand_more,
                size: 20.0,
              ),
            ],
          ),
        ),
        AnimatedCrossFade(
          duration: Duration(milliseconds: 300),
          crossFadeState:
              isExpanded ? CrossFadeState.showFirst : CrossFadeState.showSecond,
          firstChild: Column(
            children: widget.careers.map((career) {
              return CareerItem(
                career: career,
                isSelected: widget.isSelected.contains(career),
                onTap: widget.onToggle,
              );
            }).toList(),
          ),
          secondChild: Container(),
        ),
        Divider(),
      ],
    );
  }
}

class CareerItem extends StatefulWidget {
  final String career;
  final bool isSelected;
  final Function(String) onTap;

  CareerItem(
      {required this.career, required this.isSelected, required this.onTap});

  @override
  _CareerItemState createState() => _CareerItemState();
}

class _CareerItemState extends State<CareerItem>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
    );
    _animation = Tween<double>(begin: 1.0, end: 0.8).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeInOut,
      ),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) {
        _animationController.forward();
      },
      onTapUp: (_) {
        _animationController.reverse();
        widget.onTap(widget.career);
      },
      onTapCancel: () {
        _animationController.reverse();
      },
      child: ScaleTransition(
        scale: _animation,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          decoration: BoxDecoration(
            color: widget.isSelected ? Colors.blue : Colors.grey,
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Text(
            widget.career,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}

class SelectedCareerItem extends StatelessWidget {
  final String career;
  final Function(String) onTap;

  SelectedCareerItem({required this.career, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(career),
      child: Chip(
        label: Text(career),
        deleteIcon: Icon(Icons.cancel),
        onDeleted: () => onTap(career),
      ),
    );
  }
}
