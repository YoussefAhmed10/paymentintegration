// To parse this JSON data, do
//
//     final kioskToken = kioskTokenFromJson(jsonString);

import 'dart:convert';

KioskToken kioskTokenFromJson(String str) =>
    KioskToken.fromJson(json.decode(str));

String kioskTokenToJson(KioskToken data) => json.encode(data.toJson());

class KioskToken {
  KioskToken({
    required this.id,
    required this.pending,
    required this.amountCents,
    required this.success,
    required this.isAuth,
    required this.isCapture,
    required this.isStandalonePayment,
    required this.isVoided,
    required this.isRefunded,
    required this.is3DSecure,
    required this.integrationId,
    required this.profileId,
    required this.hasParentTransaction,
    required this.order,
    required this.createdAt,
    required this.transactionProcessedCallbackResponses,
    required this.currency,
    required this.sourceData,
    required this.apiSource,
    this.terminalId,
    required this.merchantCommission,
    this.installment,
    required this.isVoid,
    required this.isRefund,
    required this.data,
    required this.isHidden,
    required this.paymentKeyClaims,
    required this.errorOccured,
    required this.isLive,
    this.otherEndpointReference,
    required this.refundedAmountCents,
    required this.sourceId,
    required this.isCaptured,
    required this.capturedAmount,
    this.merchantStaffTag,
    required this.updatedAt,
    required this.owner,
    this.parentTransaction,
  });

  int id;
  bool pending;
  int amountCents;
  bool success;
  bool isAuth;
  bool isCapture;
  bool isStandalonePayment;
  bool isVoided;
  bool isRefunded;
  bool is3DSecure;
  int integrationId;
  int profileId;
  bool hasParentTransaction;
  Order order;
  DateTime createdAt;
  List<dynamic> transactionProcessedCallbackResponses;
  String currency;
  SourceData sourceData;
  String apiSource;
  dynamic terminalId;
  int merchantCommission;
  dynamic installment;
  bool isVoid;
  bool isRefund;
  KioskTokenData data;
  bool isHidden;
  PaymentKeyClaims paymentKeyClaims;
  bool errorOccured;
  bool isLive;
  dynamic otherEndpointReference;
  int refundedAmountCents;
  int sourceId;
  bool isCaptured;
  int capturedAmount;
  dynamic merchantStaffTag;
  DateTime updatedAt;
  int owner;
  dynamic parentTransaction;

  factory KioskToken.fromJson(Map<String, dynamic> json) => KioskToken(
        id: json["id"],
        pending: json["pending"],
        amountCents: json["amount_cents"],
        success: json["success"],
        isAuth: json["is_auth"],
        isCapture: json["is_capture"],
        isStandalonePayment: json["is_standalone_payment"],
        isVoided: json["is_voided"],
        isRefunded: json["is_refunded"],
        is3DSecure: json["is_3d_secure"],
        integrationId: json["integration_id"],
        profileId: json["profile_id"],
        hasParentTransaction: json["has_parent_transaction"],
        order: Order.fromJson(json["order"]),
        createdAt: DateTime.parse(json["created_at"]),
        transactionProcessedCallbackResponses: List<dynamic>.from(
            json["transaction_processed_callback_responses"].map((x) => x)),
        currency: json["currency"],
        sourceData: SourceData.fromJson(json["source_data"]),
        apiSource: json["api_source"],
        terminalId: json["terminal_id"],
        merchantCommission: json["merchant_commission"],
        installment: json["installment"],
        isVoid: json["is_void"],
        isRefund: json["is_refund"],
        data: KioskTokenData.fromJson(json["data"]),
        isHidden: json["is_hidden"],
        paymentKeyClaims: PaymentKeyClaims.fromJson(json["payment_key_claims"]),
        errorOccured: json["error_occured"],
        isLive: json["is_live"],
        otherEndpointReference: json["other_endpoint_reference"],
        refundedAmountCents: json["refunded_amount_cents"],
        sourceId: json["source_id"],
        isCaptured: json["is_captured"],
        capturedAmount: json["captured_amount"],
        merchantStaffTag: json["merchant_staff_tag"],
        updatedAt: DateTime.parse(json["updated_at"]),
        owner: json["owner"],
        parentTransaction: json["parent_transaction"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "pending": pending,
        "amount_cents": amountCents,
        "success": success,
        "is_auth": isAuth,
        "is_capture": isCapture,
        "is_standalone_payment": isStandalonePayment,
        "is_voided": isVoided,
        "is_refunded": isRefunded,
        "is_3d_secure": is3DSecure,
        "integration_id": integrationId,
        "profile_id": profileId,
        "has_parent_transaction": hasParentTransaction,
        "order": order.toJson(),
        "created_at": createdAt.toIso8601String(),
        "transaction_processed_callback_responses": List<dynamic>.from(
            transactionProcessedCallbackResponses.map((x) => x)),
        "currency": currency,
        "source_data": sourceData.toJson(),
        "api_source": apiSource,
        "terminal_id": terminalId,
        "merchant_commission": merchantCommission,
        "installment": installment,
        "is_void": isVoid,
        "is_refund": isRefund,
        "data": data.toJson(),
        "is_hidden": isHidden,
        "payment_key_claims": paymentKeyClaims.toJson(),
        "error_occured": errorOccured,
        "is_live": isLive,
        "other_endpoint_reference": otherEndpointReference,
        "refunded_amount_cents": refundedAmountCents,
        "source_id": sourceId,
        "is_captured": isCaptured,
        "captured_amount": capturedAmount,
        "merchant_staff_tag": merchantStaffTag,
        "updated_at": updatedAt.toIso8601String(),
        "owner": owner,
        "parent_transaction": parentTransaction,
      };
}

class KioskTokenData {
  KioskTokenData({
    required this.gatewayIntegrationPk,
    required this.message,
    required this.paidThrough,
    this.cashoutAmount,
    this.rrn,
    required this.otp,
    required this.dueAmount,
    required this.klass,
    this.biller,
    this.aggTerminal,
    required this.txnResponseCode,
    this.amount,
    this.ref,
    required this.billReference,
    this.fromUser,
  });

  int gatewayIntegrationPk;
  String message;
  String paidThrough;
  dynamic cashoutAmount;
  dynamic rrn;
  String otp;
  int dueAmount;
  String klass;
  dynamic biller;
  dynamic aggTerminal;
  String txnResponseCode;
  dynamic amount;
  dynamic ref;
  int billReference;
  dynamic fromUser;

  factory KioskTokenData.fromJson(Map<String, dynamic> json) => KioskTokenData(
        gatewayIntegrationPk: json["gateway_integration_pk"],
        message: json["message"],
        paidThrough: json["paid_through"],
        cashoutAmount: json["cashout_amount"],
        rrn: json["rrn"],
        otp: json["otp"],
        dueAmount: json["due_amount"],
        klass: json["klass"],
        biller: json["biller"],
        aggTerminal: json["agg_terminal"],
        txnResponseCode: json["txn_response_code"],
        amount: json["amount"],
        ref: json["ref"],
        billReference: json["bill_reference"],
        fromUser: json["from_user"],
      );

  Map<String, dynamic> toJson() => {
        "gateway_integration_pk": gatewayIntegrationPk,
        "message": message,
        "paid_through": paidThrough,
        "cashout_amount": cashoutAmount,
        "rrn": rrn,
        "otp": otp,
        "due_amount": dueAmount,
        "klass": klass,
        "biller": biller,
        "agg_terminal": aggTerminal,
        "txn_response_code": txnResponseCode,
        "amount": amount,
        "ref": ref,
        "bill_reference": billReference,
        "from_user": fromUser,
      };
}

class Order {
  Order({
    required this.id,
    required this.createdAt,
    required this.deliveryNeeded,
    required this.merchant,
    this.collector,
    required this.amountCents,
    required this.shippingData,
    required this.currency,
    required this.isPaymentLocked,
    required this.isReturn,
    required this.isCancel,
    required this.isReturned,
    required this.isCanceled,
    required this.merchantOrderId,
    this.walletNotification,
    required this.paidAmountCents,
    required this.notifyUserWithEmail,
    required this.items,
    required this.orderUrl,
    required this.commissionFees,
    required this.deliveryFeesCents,
    required this.deliveryVatCents,
    required this.paymentMethod,
    this.merchantStaffTag,
    required this.apiSource,
    required this.data,
  });

  int id;
  DateTime createdAt;
  bool deliveryNeeded;
  Merchant merchant;
  dynamic collector;
  int amountCents;
  IngData shippingData;
  String currency;
  bool isPaymentLocked;
  bool isReturn;
  bool isCancel;
  bool isReturned;
  bool isCanceled;
  String merchantOrderId;
  dynamic walletNotification;
  int paidAmountCents;
  bool notifyUserWithEmail;
  List<Item> items;
  String orderUrl;
  int commissionFees;
  int deliveryFeesCents;
  int deliveryVatCents;
  String paymentMethod;
  dynamic merchantStaffTag;
  String apiSource;
  OrderData data;

  factory Order.fromJson(Map<String, dynamic> json) => Order(
        id: json["id"],
        createdAt: DateTime.parse(json["created_at"]),
        deliveryNeeded: json["delivery_needed"],
        merchant: Merchant.fromJson(json["merchant"]),
        collector: json["collector"],
        amountCents: json["amount_cents"],
        shippingData: IngData.fromJson(json["shipping_data"]),
        currency: json["currency"],
        isPaymentLocked: json["is_payment_locked"],
        isReturn: json["is_return"],
        isCancel: json["is_cancel"],
        isReturned: json["is_returned"],
        isCanceled: json["is_canceled"],
        merchantOrderId: json["merchant_order_id"],
        walletNotification: json["wallet_notification"],
        paidAmountCents: json["paid_amount_cents"],
        notifyUserWithEmail: json["notify_user_with_email"],
        items: List<Item>.from(json["items"].map((x) => Item.fromJson(x))),
        orderUrl: json["order_url"],
        commissionFees: json["commission_fees"],
        deliveryFeesCents: json["delivery_fees_cents"],
        deliveryVatCents: json["delivery_vat_cents"],
        paymentMethod: json["payment_method"],
        merchantStaffTag: json["merchant_staff_tag"],
        apiSource: json["api_source"],
        data: OrderData.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "created_at": createdAt.toIso8601String(),
        "delivery_needed": deliveryNeeded,
        "merchant": merchant.toJson(),
        "collector": collector,
        "amount_cents": amountCents,
        "shipping_data": shippingData.toJson(),
        "currency": currency,
        "is_payment_locked": isPaymentLocked,
        "is_return": isReturn,
        "is_cancel": isCancel,
        "is_returned": isReturned,
        "is_canceled": isCanceled,
        "merchant_order_id": merchantOrderId,
        "wallet_notification": walletNotification,
        "paid_amount_cents": paidAmountCents,
        "notify_user_with_email": notifyUserWithEmail,
        "items": List<dynamic>.from(items.map((x) => x.toJson())),
        "order_url": orderUrl,
        "commission_fees": commissionFees,
        "delivery_fees_cents": deliveryFeesCents,
        "delivery_vat_cents": deliveryVatCents,
        "payment_method": paymentMethod,
        "merchant_staff_tag": merchantStaffTag,
        "api_source": apiSource,
        "data": data.toJson(),
      };
}

class OrderData {
  OrderData();

  factory OrderData.fromJson(Map<String, dynamic> json) => OrderData();

  Map<String, dynamic> toJson() => {};
}

class Item {
  Item({
    required this.name,
    required this.description,
    required this.amountCents,
    required this.quantity,
  });

  String name;
  String description;
  int amountCents;
  int quantity;

  factory Item.fromJson(Map<String, dynamic> json) => Item(
        name: json["name"],
        description: json["description"],
        amountCents: json["amount_cents"],
        quantity: json["quantity"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "description": description,
        "amount_cents": amountCents,
        "quantity": quantity,
      };
}

class Merchant {
  Merchant({
    required this.id,
    required this.createdAt,
    required this.phones,
    this.companyEmails,
    required this.companyName,
    required this.state,
    required this.country,
    required this.city,
    required this.postalCode,
    required this.street,
  });

  int id;
  DateTime createdAt;
  List<String> phones;
  dynamic companyEmails;
  String companyName;
  String state;
  String country;
  String city;
  String postalCode;
  String street;

  factory Merchant.fromJson(Map<String, dynamic> json) => Merchant(
        id: json["id"],
        createdAt: DateTime.parse(json["created_at"]),
        phones: List<String>.from(json["phones"].map((x) => x)),
        companyEmails: json["company_emails"],
        companyName: json["company_name"],
        state: json["state"],
        country: json["country"],
        city: json["city"],
        postalCode: json["postal_code"],
        street: json["street"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "created_at": createdAt.toIso8601String(),
        "phones": List<dynamic>.from(phones.map((x) => x)),
        "company_emails": companyEmails,
        "company_name": companyName,
        "state": state,
        "country": country,
        "city": city,
        "postal_code": postalCode,
        "street": street,
      };
}

class IngData {
  IngData({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.street,
    required this.building,
    required this.floor,
    required this.apartment,
    required this.city,
    required this.state,
    required this.country,
    required this.email,
    required this.phoneNumber,
    required this.postalCode,
    required this.extraDescription,
    required this.shippingMethod,
    required this.orderId,
    required this.order,
  });

  int id;
  String firstName;
  String lastName;
  String street;
  String building;
  String floor;
  String apartment;
  String city;
  String state;
  String country;
  String email;
  String phoneNumber;
  String postalCode;
  String extraDescription;
  String shippingMethod;
  int orderId;
  int order;

  factory IngData.fromJson(Map<String, dynamic> json) => IngData(
        id: json["id"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        street: json["street"],
        building: json["building"],
        floor: json["floor"],
        apartment: json["apartment"],
        city: json["city"],
        state: json["state"],
        country: json["country"],
        email: json["email"],
        phoneNumber: json["phone_number"],
        postalCode: json["postal_code"],
        extraDescription: json["extra_description"],
        shippingMethod: json["shipping_method"],
        orderId: json["order_id"],
        order: json["order"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "first_name": firstName,
        "last_name": lastName,
        "street": street,
        "building": building,
        "floor": floor,
        "apartment": apartment,
        "city": city,
        "state": state,
        "country": country,
        "email": email,
        "phone_number": phoneNumber,
        "postal_code": postalCode,
        "extra_description": extraDescription,
        "shipping_method": shippingMethod,
        "order_id": orderId,
        "order": order,
      };
}

class PaymentKeyClaims {
  PaymentKeyClaims({
    required this.orderId,
    required this.billingData,
    required this.pmkIp,
    required this.userId,
    required this.integrationId,
    required this.exp,
    required this.currency,
    required this.amountCents,
    required this.lockOrderWhenPaid,
  });

  int orderId;
  IngData billingData;
  String pmkIp;
  int userId;
  int integrationId;
  int exp;
  String currency;
  int amountCents;
  bool lockOrderWhenPaid;

  factory PaymentKeyClaims.fromJson(Map<String, dynamic> json) =>
      PaymentKeyClaims(
        orderId: json["order_id"],
        billingData: IngData.fromJson(json["billing_data"]),
        pmkIp: json["pmk_ip"],
        userId: json["user_id"],
        integrationId: json["integration_id"],
        exp: json["exp"],
        currency: json["currency"],
        amountCents: json["amount_cents"],
        lockOrderWhenPaid: json["lock_order_when_paid"],
      );

  Map<String, dynamic> toJson() => {
        "order_id": orderId,
        "billing_data": billingData.toJson(),
        "pmk_ip": pmkIp,
        "user_id": userId,
        "integration_id": integrationId,
        "exp": exp,
        "currency": currency,
        "amount_cents": amountCents,
        "lock_order_when_paid": lockOrderWhenPaid,
      };
}

class SourceData {
  SourceData({
    required this.pan,
    required this.type,
    required this.subType,
  });

  String pan;
  String type;
  String subType;

  factory SourceData.fromJson(Map<String, dynamic> json) => SourceData(
        pan: json["pan"],
        type: json["type"],
        subType: json["sub_type"],
      );

  Map<String, dynamic> toJson() => {
        "pan": pan,
        "type": type,
        "sub_type": subType,
      };
}
