trigger updateContact on Contact (after update) {
    //system.debug('Trigger New-->' + Trigger.New);
    //system.debug('Trigger NewMap-->' + Trigger.NewMap);
    //system.debug('Trigger old-->' + Trigger.old);
    //system.debug('Trigger oldMap-->' + Trigger.oldMap);
    Map<Id,Contact> mold = Trigger.oldMap;
    Map<Id,Contact> mnew = Trigger.newMap;
    list<Account> a1 = new List<Account>();
    set<Id> s = new set<Id>();
    Double i = 0;
    Map<Id,string> m = new  Map<Id,string>();
    for(Contact c1 : Trigger.New)
    {
        
        m.put(c1.Id, c1.LastName);
        s.add(c1.AccountId);
    }
    system.debug(m);
  /*  for(Account a  : [select Id,Name,A1__c,(select Id,LastName,c1__c from contacts) from Account where Id =: s]){
        
        for(Contact c : a.contacts){
            i = i + c.c1__c;
            
        }
        a.A1__c = i;
        a1.add(a);
    }
    Database.update (a1,false);*/

}