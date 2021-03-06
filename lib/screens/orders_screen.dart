import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:shop/providers/orders.dart' show Orders;
import 'package:shop/widgets/app_drawer.dart';
import '../widgets/order_item.dart';

class OrdersScreen extends StatelessWidget {
  static const String routeName = 'orders-screen';

  @override
  Widget build(BuildContext context) {
    final ordersData = Provider.of<Orders>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Your orders'),
      ),
      drawer: AppDrawer(),
      body: ListView.builder(itemCount: ordersData.orders.length,
      itemBuilder: (ctx,i) => OrderItem(ordersData.orders[i]),)
    );
  }
}
