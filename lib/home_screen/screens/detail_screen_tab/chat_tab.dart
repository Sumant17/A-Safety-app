// // ignore_for_file: import_of_legacy_library_into_null_safe

// import 'package:flutter/material.dart';

// // ignore: depend_on_referenced_packages
// import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
// import 'package:flutter_chat_ui/flutter_chat_ui.dart';

// class ChatScreen extends StatefulWidget {
//   const ChatScreen({super.key});

//   @override
//   State<ChatScreen> createState() => _ChatScreenState();
// }

// class _ChatScreenState extends State<ChatScreen> {
//   // ignore: prefer_final_fields
//   List<types.Message> _messages = [];
//   final _user = const types.User(
//     id: '82091008-a484-4a89-ae75-a22bf8d6f3ac',
//   );

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Chat(
//             messages: _messages,
//             onSendPressed: _handleSendPressed,
//             user: _user),
//       ),
//     );
//   }

//   void _handleSendPressed(types.TextMessage message) {
//     final textMessage = types.TextMessage(
//       authorId: _user.toString(),
//       id: "id",
//       text: message.text,
//     );

//     _addMessage(textMessage);
//   }

//   void _addMessage(types.Message message) {
//     setState(() {
//       _messages.insert(0, message);
//     });
//   }
// }
