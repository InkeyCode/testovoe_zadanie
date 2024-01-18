import 'package:dio/dio.dart';

class ApiService {
  final Dio dio = Dio();

  Future<dynamic> getRating() async {
    final response = await dio
        .get('https://run.mocky.io/v3/d144777c-a67f-4e35-867a-cacc3b827473');
    return response.data['rating'];
  }

  Future<dynamic> getRatingName() async {
    final response = await dio
        .get('https://run.mocky.io/v3/d144777c-a67f-4e35-867a-cacc3b827473');
    return response.data['rating_name'];
  }

  Future<dynamic> getadress() async {
    final response = await dio
        .get('https://run.mocky.io/v3/d144777c-a67f-4e35-867a-cacc3b827473');
    return response.data['adress'];
  }

  Future<dynamic> getprice() async {
    final response = await dio
        .get('https://run.mocky.io/v3/d144777c-a67f-4e35-867a-cacc3b827473');
    return response.data['minimal_price'];
  }

  Future<dynamic> get_itpr() async {
    final response = await dio
        .get('https://run.mocky.io/v3/d144777c-a67f-4e35-867a-cacc3b827473');
    return response.data['price_for_it'];
  }

  Future<String> getDescription() async {
    try {
      Response response = await dio
          .get('https://run.mocky.io/v3/d144777c-a67f-4e35-867a-cacc3b827473');
      if (response.statusCode == 200) {
        dynamic data = response.data;
        dynamic description = data['description'];
        return description;
      } else {
        throw Exception('Ошибка при получении данных');
      }
    } catch (e) {
      throw Exception('Произошла ошибка: $e');
    }
  }

  Future<dynamic> fetchFirstRoomName() async {
    try {
      Response response = await dio
          .get('https://run.mocky.io/v3/8b532701-709e-4194-a41c-1a903af00195');
      if (response.statusCode == 200) {
        return response.data['rooms'][0]['name'];
      } else {
        print('Ошибка запроса: ${response.statusCode}');
        return null;
      }
    } catch (error, stacktrace) {
      print('Произошла ошибка: $error');
      return null;
    }
  }

  Future<dynamic> fetchfirstblock1() async {
    try {
      Response response = await dio
          .get('https://run.mocky.io/v3/8b532701-709e-4194-a41c-1a903af00195');
      if (response.statusCode == 200) {
        return response.data['rooms'][0]['peculiarities'];
      } else {
        print('Ошибка запроса: ${response.statusCode}');
        return null;
      }
    } catch (error, stacktrace) {
      print('Произошла ошибка: $error');
      return null;
    }
  }

  Future<dynamic> getprice2() async {
    final response = await dio
        .get('https://run.mocky.io/v3/8b532701-709e-4194-a41c-1a903af00195');
    return response.data['rooms'][0]['price'];
  }

  Future<dynamic> getpriceper2() async {
    final response = await dio
        .get('https://run.mocky.io/v3/8b532701-709e-4194-a41c-1a903af00195');
    return response.data['rooms'][0]['price_per'];
  }

  Future<dynamic> getrating3screen() async {
    final response = await dio
        .get('https://run.mocky.io/v3/63866c74-d593-432c-af8e-f279d1a8d2ff');
    return response.data['horating'];
  }

  Future<dynamic> getrating() async {
    final response = await dio
        .get('https://run.mocky.io/v3/63866c74-d593-432c-af8e-f279d1a8d2ff');
    return response.data['horating'];
  }

  Future<dynamic> getratingname() async {
    final response = await dio
        .get('https://run.mocky.io/v3/63866c74-d593-432c-af8e-f279d1a8d2ff');
    return response.data['rating_name'];
  }

  Future<dynamic> gethoteladress() async {
    final response = await dio
        .get('https://run.mocky.io/v3/63866c74-d593-432c-af8e-f279d1a8d2ff');
    return response.data['hotel_adress'];
  }

  Future<dynamic> getflyfrom() async {
    final response = await dio
        .get('https://run.mocky.io/v3/63866c74-d593-432c-af8e-f279d1a8d2ff');
    return response.data['departure'];
  }

  Future<dynamic> getarrivalcountry() async {
    final response = await dio
        .get('https://run.mocky.io/v3/63866c74-d593-432c-af8e-f279d1a8d2ff');
    return response.data['arrival_country'];
  }

  Future<dynamic> gettourdatestart() async {
    final response = await dio
        .get('https://run.mocky.io/v3/63866c74-d593-432c-af8e-f279d1a8d2ff');
    return response.data['tour_date_start'];
  }

  Future<dynamic> gettourdatestop() async {
    final response = await dio
        .get('https://run.mocky.io/v3/63866c74-d593-432c-af8e-f279d1a8d2ff');
    return response.data['tour_date_stop'];
  }

  Future<dynamic> getkolvonights() async {
    final response = await dio
        .get('https://run.mocky.io/v3/63866c74-d593-432c-af8e-f279d1a8d2ff');
    return response.data['number_of_nights'];
  }

  Future<dynamic> getroom() async {
    final response = await dio
        .get('https://run.mocky.io/v3/63866c74-d593-432c-af8e-f279d1a8d2ff');
    return response.data['room'];
  }

  Future<dynamic> getnutrition() async {
    final response = await dio
        .get('https://run.mocky.io/v3/63866c74-d593-432c-af8e-f279d1a8d2ff');
    return response.data['nutrition'];
  }

  Future<dynamic> getprice3() async {
    final response = await dio
        .get('https://run.mocky.io/v3/63866c74-d593-432c-af8e-f279d1a8d2ff');
    return response.data['tour_price'];
  }

  Future<dynamic> getfuelcharge() async {
    final response = await dio
        .get('https://run.mocky.io/v3/63866c74-d593-432c-af8e-f279d1a8d2ff');
    return response.data['fuel_charge'];
  }

  Future<dynamic> getservicecharge() async {
    final response = await dio
        .get('https://run.mocky.io/v3/63866c74-d593-432c-af8e-f279d1a8d2ff');
    return response.data['service_charge'];
  }

 Future<dynamic> getfullprice() async {
  Response response = await Dio().get('https://run.mocky.io/v3/63866c74-d593-432c-af8e-f279d1a8d2ff');
  Map<String, dynamic> apiData = response.data;

  int totalPrice = apiData['tour_price'] + apiData['fuel_charge'] + apiData['service_charge'];
  print('Total price: $totalPrice');
  return totalPrice; // Возвращаем общую стоимость
}
}
