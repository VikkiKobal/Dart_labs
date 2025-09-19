class Product {
  String name;
  double price;
  int quantity;

  Product(this.name, this.price, this.quantity);

  double totalValue() {
    return price * quantity;
  }
}

class Store {
  List<Product> products = [];

  void addProduct(Product p) {
    products.add(p);
  }

  Product? mostExpensive() {
    if (products.isEmpty) return null;
    Product maxProduct = products[0];
    for (var p in products) {
      if (p.price > maxProduct.price) {
        maxProduct = p;
      }
    }
    return maxProduct;
  }

  double totalStoreValue() {
    double sum = 0;
    for (var p in products) {
      sum += p.totalValue();
    }
    return sum;
  }
}

void main() {
  var apple = Product("Яблуко", 15.0, 100);
  var banana = Product("Банан", 20.0, 50);
  var orange = Product("Апельсин", 25.0, 30);

  var store = Store();
  store.addProduct(apple);
  store.addProduct(banana);
  store.addProduct(orange);

  print("Найдорожчий товар: ${store.mostExpensive()?.name}");
  print("Сумарна вартість магазину: ${store.totalStoreValue()} грн");

  for (var p in store.products) {
    print("${p.name} на складі коштує: ${p.totalValue()} грн");
  }
}