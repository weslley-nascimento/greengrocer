import 'package:greengrocer/src/models/cart_item_model.dart';
import 'package:greengrocer/src/models/item_model.dart';
import 'package:greengrocer/src/models/order_model.dart';
import 'package:greengrocer/src/models/user_model.dart';

ItemModel apple = ItemModel(
  itemName: 'Maçã',
  imgUrl: 'assets/fruits/apple.png',
  unit: 'kg',
  price: 5.50,
  description: 'A melhor maçã da região e ainda conta com o melhor preço',
);

ItemModel grape = ItemModel(
  itemName: 'Uva',
  imgUrl: 'assets/fruits/grape.png',
  unit: 'kg',
  price: 9.50,
  description: 'A melhor uva da região e ainda conta com o melhor preço',
);

ItemModel guava = ItemModel(
  itemName: 'Goaiaba',
  imgUrl: 'assets/fruits/guava.png',
  unit: 'kg',
  price: 4.50,
  description: 'A melhor goiaba da região e ainda conta com o melhor preço',
);

ItemModel kiwi = ItemModel(
  itemName: 'Kiwi',
  imgUrl: 'assets/fruits/kiwi.png',
  unit: 'kg',
  price: 11.50,
  description: 'O melhor kiwi da região e ainda conta com o melhor preço',
);

ItemModel mango = ItemModel(
  itemName: 'Manga',
  imgUrl: 'assets/fruits/mango.png',
  unit: 'kg',
  price: 6.00,
  description: 'A melhor manga da região e ainda conta com o melhor preço',
);

ItemModel papaya = ItemModel(
  itemName: 'Mamão',
  imgUrl: 'assets/fruits/papaya.png',
  unit: 'un',
  price: 7.50,
  description: 'O melhor mamão da região e ainda conta com o melhor preço',
);

//Lista de Frutas
List<ItemModel> items = [
  apple,
  grape,
  guava,
  kiwi,
  mango,
  papaya,
];

//Lista de Categorias
List<String> categories = [
  'Frutas',
  'Grãos',
  'Verduras',
  'Temperos',
  'Cereais',
];

//Lista de itens do carrinho
List<CartItemModel> cartItems = [
  CartItemModel(
    item: apple,
    quantity: 2,
  ),
  CartItemModel(
    item: grape,
    quantity: 1,
  ),
  CartItemModel(
    item: papaya,
    quantity: 3,
  ),
];

//Lista dos item do perfil de usuário
UserModel user = UserModel(
  name: 'weslley',
  email: 'weslley@teste.com',
  phone: '9999999',
  cpf: '98978473234',
  password: '32254344',
);

List<OrderModel> orders = [
  // Pedido 01
  OrderModel(
    copyAndPaste: '11122222',
    createdDateTime: DateTime.parse(
      '2022-10-02 10:20:28.345',
    ),
    overdueDateTime: DateTime.parse(
      '2022-10-04 13:53:22.345',
    ),
    id: 'Ylkjserotweojsao',
    status: 'peding_payment',
    total: 16.50,
    items: [
      CartItemModel(
        item: apple,
        quantity: 2,
      ),
      CartItemModel(
        item: mango,
        quantity: 2,
      ),
    ],
  ),

  // Pedido 02
  OrderModel(
    copyAndPaste: '11122222',
    createdDateTime: DateTime.parse(
      '2022-10-02 18:20:28.345',
    ),
    overdueDateTime: DateTime.parse(
      '2022-10-04 18:21:22.345',
    ),
    id: 'Wjsdfhiskskdlffoiuusdfhlakj',
    status: 'delivered',
    total: 16.50,
    items: [
      CartItemModel(
        item: grape,
        quantity: 1,
      ),
      CartItemModel(
        item: papaya,
        quantity: 2,
      ),
    ],
  ),
];
