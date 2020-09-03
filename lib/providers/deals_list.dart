import 'package:flutter/material.dart';

import './deals.dart';

class DealsList with ChangeNotifier {
  List<Deal> _deals = [
    Deal(
      id: 'deal1',
      title: '20% OFF',
      code: '20TEE',
      description: 'T-SHIRTS AND LONG SLEEVES',
      isNew: false,
    ),
    Deal(
      id: 'deal2',
      title: 'BOGO',
      code: 'BOGO',
      description: 'STICKER PACKS AND ACCESSORIES',
      isNew: false,
    ),
    Deal(
      id: 'deal3',
      title: 'FREE SHIPPING',
      code: 'FREESHIP',
      description: 'FOR ALL DOMESTIC ORDERS',
      isNew: true,
    ),
  ];

  List<Deal> get deals {
    return [..._deals];
  }
}
