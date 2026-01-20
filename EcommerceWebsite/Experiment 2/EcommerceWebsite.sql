Table users {
  user_id int [pk, increment]
  name varchar
  email varchar [unique]
  password varchar
  phone varchar
  address text
  created_at datetime
}

Table products {
  product_id int [pk, increment]
  name varchar
  description text
  price decimal
  image_url varchar
  created_at datetime
}

Table inventory {
  inventory_id int [pk, increment]
  product_id int
  stock_quantity int
  last_updated datetime
}

Table cart {
  cart_id int [pk, increment]
  user_id int
  created_at datetime
}

Table cart_items {
  cart_item_id int [pk, increment]
  cart_id int
  product_id int
  quantity int
}

Table orders {
  order_id int [pk, increment]
  user_id int
  total_amount decimal
  order_status varchar
  created_at datetime
}

Table order_items {
  order_item_id int [pk, increment]
  order_id int
  product_id int
  quantity int
  price decimal
}

Table payments {
  payment_id int [pk, increment]
  order_id int
  payment_method varchar
  payment_status varchar
  transaction_id varchar
  payment_date datetime
}

Table search_logs {
  search_id int [pk, increment]
  user_id int
  search_query varchar
  searched_at datetime
}

Ref: inventory.product_id > products.product_id
Ref: cart.user_id > users.user_id
Ref: cart_items.cart_id > cart.cart_id
Ref: cart_items.product_id > products.product_id
Ref: orders.user_id > users.user_id
Ref: order_items.order_id > orders.order_id
Ref: order_items.product_id > products.product_id
Ref: payments.order_id > orders.order_id
Ref: search_logs.user_id > users.user_id
