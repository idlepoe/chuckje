import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'main.dart';
import 'models/api_result.dart';
import 'models/item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Item> _list = [];

  @override
  void initState() {
    getList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("축제"), actions: [
        ElevatedButton(
            onPressed: () {
              getList();
            },
            child: Text("새로고침"))
      ]),
      body: ListView.builder(
        itemCount: _list.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Image.network(_list[index].MAIN_IMG),
            title: Text(_list[index].TITLE),
            subtitle: Text(_list[index].STRTDATE + "~" + _list[index].END_DATE),
            trailing: Chip(label: Text(_list[index].IS_FREE)),
          );
        },
      ),
    );
  }

  Future<void> getList() async {
    final response = await Dio().get(
        'http://openapi.seoul.go.kr:8088/6478766f6569646c3635647643707a/json/culturalEventInfo/1/1000/');
    ApiResult apiResult =
        ApiResult.fromJson(response.data["culturalEventInfo"]);
    _list = apiResult.row;
    setState(() {});
  }
}
