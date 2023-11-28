import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

class MyCreditCart extends StatefulWidget {
  const MyCreditCart(
      {super.key, required this.formKey, required this.autovalidateMode});
  final GlobalKey<FormState> formKey;
  final AutovalidateMode autovalidateMode;
  @override
  State<MyCreditCart> createState() => _MyCreditCartState();
}

class _MyCreditCartState extends State<MyCreditCart> {
  String cardNumber = '', expiryDate = '', cardHolderName = '', cvvCode = '';
  bool showBackView = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CreditCardWidget(
            isHolderNameVisible: true,
            cardNumber: cardNumber,
            expiryDate: expiryDate,
            cardHolderName: cardHolderName,
            cvvCode: cvvCode,
            showBackView: showBackView,
            onCreditCardWidgetChange: (creditCardBrand) {}),
        CreditCardForm(
          autovalidateMode: widget.autovalidateMode,
          cardNumber: cardNumber,
          expiryDate: expiryDate,
          cardHolderName: cardHolderName,
          cvvCode: cvvCode,
          onCreditCardModelChange: (creditCardModel) {
            cardHolderName = creditCardModel.cardHolderName;
            cardNumber = creditCardModel.cardNumber;
            cvvCode = creditCardModel.cvvCode;
            expiryDate = creditCardModel.expiryDate;
            showBackView = creditCardModel.isCvvFocused;
            setState(() {});
          },
          formKey: widget.formKey,
        )
      ],
    );
  }
}
