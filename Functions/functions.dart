void main(){

}

String sayHello(String mot){
  return "Hello " + mot;
}

num sum(num a, num b){
  return a + b;
}

num sumMany(List<num> numbers) {
  num total = 0;
  for (num number in numbers) {
    total += number;
  }
  return total;
}

void sumAndprint(num param1, num param2, bool ?shouldPrint) {
  num result = sum(param1, param2);
  if (shouldPrint == true) {
    print("Result should print: $result");
  }
}

num sumAndFormat(num param1, num param2, String ?ft) {
  num result = sum(param1, param2);

  if(ft=="int"){
    return result.toInt();
  }
  return result;
}