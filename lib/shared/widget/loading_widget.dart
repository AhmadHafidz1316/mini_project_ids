import 'package:flutter/material.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const CircularProgressIndicator(
            strokeWidth: 3,
            color: Colors.deepPurple,
          ),
          const SizedBox(height: 10),
          Text(
            "Loading...",
            style: TextStyle(
              fontSize: 16,
              color: Colors.deepPurple.shade700,
            ),
          ),
        ],
      ),
    );
  }
}
