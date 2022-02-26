trigger oppClosed on Opportunity (before update) {
    
  /*   Map<Id,Opportunity> oppOld = Trigger.oldMap;
     system.debug(oppOld);
    Map<Id,Opportunity> oppNew = Trigger.newMap;
    system.debug(oppNew);*/
    
  //  List<Opportunity> opp = [select Id,Name,Amount,Description,ExpectedRevenue from opportunity where Id=: Trigger.New];
  //  string str = JSON.serializePretty(opp);
  //  system.debug(str);
  
servicenowupdate.serviceNowUpdateMethod(Trigger.New);
}