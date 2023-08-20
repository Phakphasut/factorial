class ClsProbability {
  int Factorial({required int intNumber}){
    int intResult = 0;

    if (intNumber>=1) {
      for (var i = intNumber; i >=1; i--) {
        intResult *=i;
      }
    }

    return intResult;
  }
}