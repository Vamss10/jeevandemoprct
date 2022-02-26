trigger phoneUpdate on Contact (After update) {
    List<Contact> c = new List<Contact>();
    for(Contact a : [select Id,LastName,Phone from Contact where Id =: Trigger.New]){
        c.add(a);
    }
   callOutTrigger ca1 = new callOutTrigger();
  // callOutTrigger cas1 = new callOutTrigger(c);
  //  callOutTrigger.serialize(c);
    
  
    
/*   Map<Id,Contact> m = new Map<Id,Contact>();
    for(Contact c : Trigger.New){
        m.put(c.Id,c);
        
     }
    list<Account> acc = new list<Account>();
    list<Opportunity> oppo = new list<Opportunity>();
    for(Account a : [select Id,Name,Phone,(select Id,Name,Phone__c from Opportunities) from Account where Id =: m.values().AccountId]){
        Account a1 = new Account();
        a1.Id = a.Id;
        a1.Name = a.Name;
        a1.Phone = m.values().Phone;
        acc.add(a1);
        for(opportunity op : [select Id,Name,Phone__c from opportunity where AccountId =: a.Id]){
           Opportunity opp = new Opportunity();
            opp.Id = op.Id;
            opp.Name = op.Name;
            opp.Phone__c = m.values().Phone;
            oppo.add(opp);
        }
    }
    update acc;
    update oppo;*/
    
    
}