List<String> getStudentPassed(Map<String, int> scores)
{
  final passed = <String>[];
  for(final i in scores.entries){
    if(i.value >= 50){
      passed.add(i.key);
    }
  }
  return passed;
}

void main(){
  final scores = {
  "Dara": 78,
  "Sokha": 45,
  "Lina": 62,
  "Vanna": 39,
  "Mony": 85
  };

  print(getStudentPassed(scores));
}