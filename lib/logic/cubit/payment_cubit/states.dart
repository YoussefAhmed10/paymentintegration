abstract class PaymentStates {}

class PaymentInitializeState extends PaymentStates {}

class PaymentSuccessState extends PaymentStates {}

class PaymentErrorState extends PaymentStates {
  final String error;
  PaymentErrorState(this.error);
}

class PaymentOrderIdSuccessState extends PaymentStates {}

class PaymentOrderIdErrorState extends PaymentStates {
  final String error;
  PaymentOrderIdErrorState(this.error);
}

class PaymentRequstfinalTokenSuccessState extends PaymentStates {}

class PaymentRequstfinalTokenErrorState extends PaymentStates {
  final String error;
  PaymentRequstfinalTokenErrorState(this.error);
}

class PaymentRequstTokenKioskSuccessState extends PaymentStates {}

class PaymentRequstTokenKioskErrorState extends PaymentStates {
  final String error;
  PaymentRequstTokenKioskErrorState(this.error);
}

class PaymentRefCodeSuccessState extends PaymentStates {}

class PaymentRefCodeErrorState extends PaymentStates {
  final String error;
  PaymentRefCodeErrorState(this.error);
}
