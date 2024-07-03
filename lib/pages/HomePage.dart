import 'package:coffeeshopapp/components/my_silver_app_bar.dart';
import 'package:coffeeshopapp/components/sidedrawer.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Sidedrawer(),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          const MySilverAppBar(
            title: Text("data"),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [Text("LOOL")],
            ),
          ),
        ],
        body: Container(
          color: Colors.deepPurpleAccent,
        ),
      ),
    );
  }
}
