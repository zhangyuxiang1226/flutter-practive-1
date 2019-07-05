import 'package:flutter/material.dart';

/**
 * 本demo主要是传参和路由操作
 * 1. 自定义类，组件传参
 * 2. 点击进行路由跳转，并且将数据带到目标页面
 */
void main() {
  runApp(NavigateWithParams());
}

class NavigateWithParams extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: '导航数据传递',
        // 自定义组件传参
        home: ProductList(
            products: List.generate(20, (i) => Product('商品$i', '商品详情编号：$i'))));
  }
}

// 抽象出商品列表的类
class Product {
  final String title; // 商品标题
  final String description; // 商品描述
  // 构造函数
  Product(this.title, this.description);
}

// 自定义组件
class ProductList extends StatelessWidget {
  final List<Product> products;
  // 这一步都是为了定义接收参数
  ProductList({Key key, @required this.products}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('商品列表'),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(products[index].title),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          ProductDetail(product: products[index])));
            },
          );
        },
      ),
    );
  }
}

class ProductDetail extends StatelessWidget {
  final Product product;
  ProductDetail({Key key, @required this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${product.title}'),
      ),
      body: Center(
        child: Text('${product.description}', style: TextStyle(fontSize: 30.0),),
      ),
    );
  }
}
