import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_chat/models/chat.dart';
import 'package:flutter_firebase_chat/models/chat_user.dart';
import 'package:flutter_firebase_chat/pages/chat_overview/chat_overview_controller.dart';
import 'package:flutter_firebase_chat/pages/new_chat/new_chat_page.dart';
import 'package:flutter_firebase_chat/pages/chat_overview/widgets/chat_header_widget.dart';
import 'package:flutter_firebase_chat/widgets/exception_widget.dart';
import 'package:flutter_firebase_chat/widgets/loading_widget.dart';

class ChatOverviewPage extends StatefulWidget {
  final ChatUser user;

  const ChatOverviewPage(this.user, {Key? key}) : super(key: key);

  @override
  State<ChatOverviewPage> createState() => _ChatOverviewPageState();
}

class _ChatOverviewPageState extends State<ChatOverviewPage> {
  final ChatOverviewController _controller = ChatOverviewController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Your chats")),
        body: FutureBuilder(
            future: _controller.getAllChatsOfUser(widget.user),
            builder: (context, snapshot) {
              if (snapshot.connectionState != ConnectionState.done) {
                return const LoadingWidget();
              } else if (snapshot.hasData) {
                return _buildChatWidgets(snapshot.data!);
              } else {
                return const ExceptionWidget();
              }
            }),
        floatingActionButton: FloatingActionButton.extended(
            label: const Text("new chat"),
            icon: const Icon(Icons.add),
            onPressed: () async {
              await Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => NewChatPage(widget.user)));

              setState(() {});
            }));
  }

  Widget _buildChatWidgets(List<Chat> chats) {
    return chats.isEmpty
        ? const Center(child: Text("Start your first conversation!"))
        : RefreshIndicator(
            onRefresh: () async =>
                await _controller.getAllChatsOfUser(widget.user),
            child: ListView.builder(
                itemCount: chats.length,
                itemBuilder: (context, index) {
                  var chatName =
                      _controller.getChatName(chats[index], widget.user);
                  var stream = FirebaseFirestore.instance
                      .collection("chats")
                      .doc(chats[index].id)
                      .snapshots();
                  return ChatHeaderWidget(
                      chatName: chatName, stream: stream, user: widget.user);
                }));
  }
}
