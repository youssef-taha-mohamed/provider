import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:y_task/constant.dart';
import '../models/myprovider.dart';
import '../router.dart';

import 'models/catalog.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(create: (context)=> CatalogModel()),
        ChangeNotifierProxyProvider<CatalogModel, MyProvider>(
            create: (context) => MyProvider(),
            update: (context, catalog, cart){
              if (cart == null ) throw ArgumentError.notNull("cart");
              cart.catalogModel= catalog;
              return cart;
            })
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: primaryColor),
          useMaterial3: true,
        ),
        routerConfig: router(),
      ),
    );
  }
}

