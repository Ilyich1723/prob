import 'package:prob/prob.dart' as prob;
import 'package:dio/dio.dart';
  void main(List<String> arguments) async {
  Dio httpClient = Dio();
  String url ='https://dummyjson.com/products';
  var response = await httpClient.get(url);
    Map<String,dynamic> data = response.data;
    int count =0;
    for(var el in data['products']){
        if (el['price'] < 100) {
          count++;
        }
    }
    print(count);
}
