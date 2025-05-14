// first solution
num sum(List<num> arr) {
  num tot = 0;
  for(int i = 0;i<arr.length;i++){
     tot+=arr[i];
   }
  return tot;
}
// second solution
num sumSecondary(List<num> arr) {
 num totale = 0;
  for(var element in arr){
   totale +=element ;
 }
  return totale;
}