int sumSetItems(Set<int> numbers) {
  var result = 0;

  for (var number in numbers) {
    result += number;
  }
  
  return result;
}
