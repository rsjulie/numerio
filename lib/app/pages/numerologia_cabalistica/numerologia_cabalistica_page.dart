import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './numerologia_cabalistica_controller.dart';

class NumerologiaCabalisticaPage
    extends GetView<NumerologiaCabalisticaController> {
  const NumerologiaCabalisticaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background_modules.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              const SliverAppBar(
                title: Text(
                  'NUMEROLOGIA CABALÍSTICA',
                  style: TextStyle(
                      fontFamily: 'Josefin', fontWeight: FontWeight.bold),
                ),
                backgroundColor: Colors.transparent,
              )
            ];
          },
          body: Padding(
            padding: const EdgeInsets.all(28.0),
            child: Column(
              children: [
                Text(
                  'Número de Destino',
                  style: Theme.of(context)
                      .textTheme
                      .headline6!
                      .copyWith(fontWeight: FontWeight.w300),
                ),
                const SizedBox(height: 15),
                Container(
                  height: 80,
                  width: 90,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    gradient: LinearGradient(colors: [
                      const Color.fromARGB(0, 73, 73, 73),
                      Colors.grey.withOpacity(0.4)
                    ], begin: Alignment.topRight, end: Alignment.bottomLeft),
                  ),
                  child: Center(
                    child: Text(
                      '5',
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                Text(
                  'Número de Destino',
                  style: Theme.of(context)
                      .textTheme
                      .headline6!
                      .copyWith(fontWeight: FontWeight.w300),
                ),
                const SizedBox(height: 15),
                Container(
                  height: 80,
                  width: 90,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    gradient: LinearGradient(colors: [
                      const Color.fromARGB(0, 73, 73, 73),
                      Colors.grey.withOpacity(0.4)
                    ], begin: Alignment.topRight, end: Alignment.bottomLeft),
                  ),
                  child: Center(
                    child: Text(
                      '5',
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                Text(
                  'Número de Destino',
                  style: Theme.of(context)
                      .textTheme
                      .headline6!
                      .copyWith(fontWeight: FontWeight.w300),
                ),
                const SizedBox(height: 15),
                Container(
                  height: 80,
                  width: 90,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    gradient: LinearGradient(colors: [
                      const Color.fromARGB(0, 73, 73, 73),
                      Colors.grey.withOpacity(0.4)
                    ], begin: Alignment.topRight, end: Alignment.bottomLeft),
                  ),
                  child: Center(
                    child: Text(
                      '5',
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                Text(
                  'Número de Destino',
                  style: Theme.of(context)
                      .textTheme
                      .headline6!
                      .copyWith(fontWeight: FontWeight.w300),
                ),
                const SizedBox(height: 15),
                Container(
                  height: 80,
                  width: 90,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    gradient: LinearGradient(colors: [
                      const Color.fromARGB(0, 73, 73, 73),
                      Colors.grey.withOpacity(0.4)
                    ], begin: Alignment.topRight, end: Alignment.bottomLeft),
                  ),
                  child: Center(
                    child: Text(
                      '5',
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
