import 'package:flutter/material.dart';
import 'package:playpoint/mainPage/widget/mainScreenItem.dart';

class news extends StatefulWidget {
  news({Key? key}) : super(key: key);

  @override
  State<news> createState() => _newsState();
}

class _newsState extends State<news> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 10),
        Text(
          'Баасан, 5 сарын 24 2021',
          textAlign: TextAlign.start,
        ),
        mainScreenItem(
          description: 'ArdKids хүүхдийн санхүүгийн апп',
          medeelel: '',
          text: '',
        ),
        mainScreenItem(
          description: 'Нэмэлт дата багцуудын ҮНЭ БУУРЧ, ДАТА НЭМЭГДЛЭЭ',
          medeelel: '',
          text: '',
        ),
        mainScreenItem(
          description: 'Mend аппликейшнг санал болгож байна',
          medeelel: '',
          text: '',
        ),
        SizedBox(height: 10),
        Text('Баасан, 5 сарын 22 2021'),
        mainScreenItem(
          description: 'ArdKids хүүхдийн санхүүгийн апп',
          medeelel: '',
          text: '',
        ),
        mainScreenItem(
          description: 'ArdKids хүүхдийн санхүүгийн апп',
          medeelel: '',
          text: '',
        ),
        mainScreenItem(
          description: 'ArdKids хүүхдийн санхүүгийн апп',
          medeelel: '',
          text: '',
        ),
      ],
    );
  }
}
