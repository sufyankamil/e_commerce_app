class EPricingCalculator {
  // Calulate Price based on tax and Shipping
  static double calculateTotalPrice(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;

    double shippingCost = getShippingCost(location);

    double totalPrice = productPrice + taxAmount + shippingCost;

    return totalPrice;
  }

  // Calculate shipping cost

  static String calculateShippingCost(double productPrice, String location) {
    double shippingCost = getShippingCost(location);

    return '\$${shippingCost.toStringAsFixed(2)}';
  }

  // Calculate Tax
  static String calculateTax(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;

    return '\$${taxAmount.toStringAsFixed(2)}';
  }

  static double getTaxRateForLocation(String location) {
    if (location == 'New York') {
      return 0.1;
    } else if (location == 'California') {
      return 0.09;
    } else if (location == 'Florida') {
      return 0.08;
    } else if (location == 'Texas') {
      return 0.07;
    } else if (location == 'Pennsylvania') {
      return 0.06;
    } else if (location == 'Ohio') {
      return 0.05;
    } else if (location == 'Illinois') {
      return 0.04;
    } else if (location == 'Washington') {
      return 0.03;
    } else if (location == 'Georgia') {
      return 0.02;
    } else if (location == 'Michigan') {
      return 0.01;
    } else {
      return 0.0;
    }
  }

  static double getShippingCost(String location) {
    if (location == 'New York') {
      return 10.0;
    } else if (location == 'California') {
      return 20.0;
    } else if (location == 'Florida') {
      return 30.0;
    } else if (location == 'Texas') {
      return 40.0;
    } else if (location == 'Pennsylvania') {
      return 50.0;
    } else if (location == 'Ohio') {
      return 60.0;
    } else if (location == 'Illinois') {
      return 70.0;
    } else if (location == 'Washington') {
      return 80.0;
    } else if (location == 'Georgia') {
      return 90.0;
    } else if (location == 'Michigan') {
      return 100.0;
    } else {
      return 0.0;
    }
  }
}
