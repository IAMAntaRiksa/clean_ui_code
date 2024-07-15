import 'package:flutter/material.dart';

class SizeInfoViewWidget extends StatelessWidget {
  final List<String> size;
  final int selectedIndex;
  final Function(int) onClick;

  const SizeInfoViewWidget({
    super.key,
    required this.size,
    required this.selectedIndex,
    required this.onClick,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Text(
          'Size',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        Row(
          children: size.map((item) {
            final index = size.indexOf(item);
            final isSelected = selectedIndex == index;
            return GestureDetector(
              onTap: () => onClick(index),
              child: Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: isSelected ? Colors.black : Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.black,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      item,
                      style: TextStyle(
                        color: isSelected ? Colors.white : Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
