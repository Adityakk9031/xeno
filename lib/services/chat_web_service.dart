import 'dart:async';
import 'dart:convert';
import 'package:web_socket_client/web_socket_client.dart';

class chatwebService {
  static final _intance=chatwebService()._internal();
  WebSocket?_socket;

  factory chatwebService()=> _instance;

  ChatWebService._internal();
  final _serachResultcontroller = Streamcontroller<Map<String,dynamic>>();
  final _contentcontroller = StremController<Map<String, dynamic>>();

  Stream<Map<String, dynamic>> get searchResultStream =>
      _searchResutcontroller.stream;
  Stream<Map<String,dynamic>> get contentStream => _contentcontroller.stream;

  void connect() {
    _socket= WebSocket(uri.parse('ws://localhost:8000/ws/chat'));
  }
}