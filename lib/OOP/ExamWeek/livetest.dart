
void main(){
  List<Map<String,dynamic>> fruits=[
    {'Name': 'Apple', 'Color': 'Red', 'Price': 10.5},
    {'Name': 'Banana', 'Color': 'Yellow', 'Price': 5.6},
    {'Name': 'Grapes', 'Color': 'Purple', 'Price': 9.3}
  ];

  print('\nOrginal Food Price Details');
  displayFruitDetails(fruits);


  print('\nDiscount 10% Food Price Details');
  applyPriceDiscount(fruits, 10);
  displayFruitDetails(fruits);

}

void displayFruitDetails(List<Map<String,dynamic>> fruits) {
  for (var item in fruits) {
   print('Name: ${item['Name']}');
   print('Color: ${item['Color']}');
   print('Price: \$${item['Price'].toStringAsFixed(2)}');
  }
}

void applyPriceDiscount(List<Map<String, dynamic>> fruits,double discountPercentage){
  for(var item in fruits){
    double price=item['Price'];
    double discountPrice=(discountPercentage/100)*price;
    double lastPrice=price-discountPrice;
    item['Price']=lastPrice;
  }
}