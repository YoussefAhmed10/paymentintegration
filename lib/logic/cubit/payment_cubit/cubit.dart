// ignore_for_file: avoid_print

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:paymentintegration/logic/cubit/payment_cubit/states.dart';
import 'package:paymentintegration/presention/shared/local/constant.dart';
import 'package:paymentintegration/presention/shared/remote/dio_helper.dart';

class PaymentCubit extends Cubit<PaymentStates> {
  PaymentCubit() : super(PaymentInitializeState());

  static PaymentCubit get(context) => BlocProvider.of(context);

  // FirstToken? firstToken;

  Future getFirstToken(
    String firstName,
    String lastName,
    String email,
    String phoneNumber,
    String price,
  ) async {
    DioHelper.postData(
      url: 'auth/tokens',
      data: {'api_key': paymobApiKey},
    ).then((value) {
      paymobFirstToken = value.data['token'];
      print('paymobFirstToken : $paymobFirstToken');
      getOrderId(
        firstName,
        lastName,
        email,
        phoneNumber,
        price,
      );
      emit(PaymentSuccessState());
    }).catchError((error) {
      print(error.toString());
      emit(PaymentErrorState(error.toString()));
    });
  }

  Future getOrderId(
    String firstName,
    String lastName,
    String email,
    String phone,
    String price,
  ) async {
    DioHelper.postData(
      url: 'ecommerce/orders',
      data: {
        'auth_token': paymobFirstToken,
        'delivery_needed': false,
        'amount_cents': price,
        'items': [],
        'currency': 'EGP'
      },
    ).then((value) {
      paymobOrderId = value.data['id'].toString();
      print('OrderId : $paymobOrderId');
      getRequstfinalTokenCard(price, firstName, lastName, email, phone);
      getRequstTokenKiosk(price, firstName, lastName, email, phone);
      emit(PaymentOrderIdSuccessState());
    }).catchError((error) {
      print(error.toString());
      emit(PaymentOrderIdErrorState(error.toString()));
    });
  }

  Future getRequstfinalTokenCard(
    String price,
    String firstName,
    String lastName,
    String email,
    String phone,
  ) async {
    DioHelper.postData(
      url: 'acceptance/payment_keys',
      data: {
        "auth_token": paymobFirstToken,
        "amount_cents": "100",
        "expiration": 3600,
        "order_id": paymobOrderId,
        "billing_data": {
          "apartment": "803",
          "email": email,
          "floor": "NA",
          "first_name": firstName,
          "street": "NA",
          "building": "NA",
          "phone_number": phone,
          "shipping_method": "NA",
          "postal_code": "NA",
          "city": "NA",
          "country": "NA",
          "last_name": lastName,
          "state": "NA"
        },
        "currency": "EGP",
        "integration_id": integrationIdCard,
        "lock_order_when_paid": "false"
      },
    ).then((value) {
      finalTokenCard = value.data['token'].toString();
      print('finalTokenCard : $finalTokenCard');
      emit(PaymentRequstfinalTokenSuccessState());
    }).catchError((error) {
      print(error.toString());
      emit(PaymentRequstfinalTokenErrorState(error.toString()));
    });
  }

  Future getRequstTokenKiosk(
    String price,
    String firstName,
    String lastName,
    String email,
    String phone,
  ) async {
    DioHelper.postData(
      url: 'acceptance/payment_keys',
      data: {
        "auth_token": paymobFirstToken,
        "amount_cents": price,
        "expiration": 3600,
        "order_id": paymobOrderId,
        "billing_data": {
          "apartment": "NA",
          "email": email,
          "floor": "NA",
          "first_name": firstName,
          "street": "NA",
          "building": "NA",
          "phone_number": phone,
          "shipping_method": "NA",
          "postal_code": "NA",
          "city": "NA",
          "country": "NA",
          "last_name": lastName,
          "state": "NA"
        },
        "currency": "EGP",
        "integration_id": integrationIdKiosk,
        "lock_order_when_paid": "false"
      },
    ).then((value) {
      finalTokenKiosk = value.data['token'];
      print('finalTokenKiosk : $finalTokenKiosk');
      getRefCode();
      emit(PaymentRequstTokenKioskSuccessState());
    }).catchError((error) {
      print(error.toString());
      emit(PaymentRequstTokenKioskErrorState(error.toString()));
    });
  }

  Future getRefCode() async {
    DioHelper.postData(
      url: 'acceptance/payments/pay',
      data: {
        "source": {
          "identifier": "AGGREGATOR",
          "subtype": "AGGREGATOR",
        },
        "payment_token": finalTokenKiosk
      },
    ).then((value) {
      refCode = value.data['id'].toString();
      print('refCode : $refCode');
      emit(PaymentRefCodeSuccessState());
    }).catchError((error) {
      print(error.toString());
      emit(PaymentRefCodeErrorState(error.toString()));
    });
  }
}
