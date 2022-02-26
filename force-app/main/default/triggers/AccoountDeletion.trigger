trigger AccoountDeletion on Account (before delete) {
    if(trigger.isbefore && trigger.isdelete)
    {
        system.debug(Trigger.old);
        for(Account a : [select Id,Name from Account where Id IN (select AccountId from Opportunity) AND Id  =: Trigger.old])
        {
            
            Trigger.oldMap.get(a.Id).addError('Cannot delete');
        }
      /*  Test.startTest();
        DataBase.DeleteResult r = DataBase.Delete(a,false);
        Test.startTest();
        System.assert(!r.isSuccess());
        system.assert(r.getErrors().size()>0);
        System.assertEquals('Cannot delete', r.getErrors()[0].getMessage());*/
        
    }

}