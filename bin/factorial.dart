import 'package:factorial/clsHF0111.dart';
import 'package:factorial/clsGetValue0111.dart';
import 'package:factorial/probability0100.dart';
import 'package:intl/intl.dart';

void main(List<String> arguments) {
  var objHF = ClsHF();
  var objGetInt = ClsGetValue();
  var objProb = ClsProbability();
  var objFormatInt = NumberFormat("#,##0");

  int intNumber = 0;
  String strFactorial = "";

  objHF.setHeader(
    strProg: "Factorial", 
    strVersion: "1.0.0", 
    strDate: "660820", 
    strTime: "2200", 
    strID: "64345770", 
    strDev: "Phakphasut Kh.");

  intNumber = objGetInt.getInt(
    strValueName: "Number", 
    intMin: 0, 
    intMax: 30,
    intTabs: 1);

  strFactorial = "$intNumber! \t\t= ";

  for (var i = intNumber; i >= 1; i--) {
    if (i == intNumber) {
      strFactorial = "$strFactorial$i";
    } else {
      strFactorial = "$strFactorial x $i";
    }
  }
  
  print(strFactorial);
  print("$intNumber! \t\t= ${objFormatInt.format(objProb.Factorial(intNumber: intNumber))}");

  objHF.setFooter();
  }
