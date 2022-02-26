trigger accountUpdate on Account (After Update) {

    List<Account> acc = new List<Account>();
    for(Account a : [select Id,Name,(select Id,LastName from contacts) from Account Where Id =: Trigger.New LIMIT 2]){
     acc.add(a);   
    } 	
    callOutTrigger.serializ(acc);
}