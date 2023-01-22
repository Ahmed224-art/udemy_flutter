import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:udemy_flutter/modules/archived_tasks/archive_tasks.dart';
import 'package:udemy_flutter/modules/done_tasks/done_tasks.dart';
import 'package:udemy_flutter/modules/new_tasks/new_tasks.dart';

class HomeLayout extends StatefulWidget {
  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  Database? database;
  int currentIndex = 0;
  List<Widget> screen = [
    NewTasks(),
    DonTasks(),
    ArchivedTasks(),
  ];
  List<String> title = ['New Tasks', 'Done Tasks', 'Archived Tasks'];

  @override
  void initState() {
    createDataBase();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title[currentIndex],
        ),
      ),
      body: screen[currentIndex],
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          insertIntoDataBase();
        },
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.menu,
            ),
            label: 'Tasks',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.check_circle,
            ),
            label: 'Done',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.archive_outlined,
            ),
            label: 'Archived',
          ),
        ],
      ),
    );
  }

  void createDataBase() async {
    database = await openDatabase(
      'TODO.db',
      version: 1,
      onCreate: (db, version) async {
        await db
            .execute(
                'Create table tasks (id Integer primary key , title Text , date text , time text , status text)')
            .then((value) {
          print('database creating now');
        }).catchError((error) {
          print('error is happened now==>${error}');
        });
        print('data baase is created');
      },
      onOpen: (db) {
        print('data base opening');
      },
    ).then((value) {
      print('data base criating');
    }).catchError((error) {
      print('error when criating database${error}');
    });
  }

  void insertIntoDataBase() {
    database?.transaction((txn) async {
      await txn
          .rawInsert(
              'insert into tasks(title,date,time,status) values("first","02222","20","new")')
          .then((value) {
        print('${value} is successefull inserted');
      }).catchError((error) {
        print('error when inserted${error}');
      });
    }).then((value) {
      print("${value}has done");
    }).catchError((error) {
      print("${error}huss happend when insert into database");
    });
  }
}
