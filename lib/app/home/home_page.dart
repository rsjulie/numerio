import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:numerio/app/home/widgets/home_card.dart';
import './home_controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/background_home.png'),
                  fit: BoxFit.cover)),
          child: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                const SliverAppBar(
                  title: Icon(Icons.home),
                  backgroundColor: Colors.transparent,
                )
              ];
            },
            body: Padding(
              padding: const EdgeInsets.all(28.0),
              child: ListView(
                children: const [
                  SizedBox(height: 10),
                  HomeCard(title: 'NUMEROLOGIA CABALÍSTICA'),
                  SizedBox(height: 25),
                  HomeCard(title: 'PIRÂMIDE'),
                  SizedBox(height: 25),
                  HomeCard(title: 'ARCANOS'),
                ],
              ),
            ),
          )),
    );
  }
}
