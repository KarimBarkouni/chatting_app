import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatsapp/themes/theme_provider.dart';

class ChatBubble extends StatelessWidget {
  final String message;
  final bool isCurrentUser;

  const ChatBubble(
      {super.key, required this.message, required this.isCurrentUser});

  @override
  Widget build(BuildContext context) {
    // light mode / dark mode for correct bubble colors
    bool isDarkMode =
        Provider.of<ThemeProvider>(context, listen: false).isDarkMode;

    return Container(
      decoration: BoxDecoration(
          color: isCurrentUser
              ? (isDarkMode ? Colors.blueAccent : Colors.blueAccent)
              : (isDarkMode ? Colors.grey.shade700 : Colors.grey.shade200),
          borderRadius: BorderRadius.circular(12)),
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.symmetric(vertical: 3, horizontal: 25),
      child: Text(
        message,
        style: TextStyle(
            color: isDarkMode
                ? Colors.white
                : (isDarkMode ? Colors.white : Colors.black)),
      ),
    );
  }
}
