trigger deleteAccount on Account (before delete) {
    integer i = 0;
    for(Account a : [select Id,Name,(select Id,LastName from contacts) from Account where Id =: Trigger.Old]){
        
        for(Contact c : a.Contacts){
            i++;
        }
        if(i > 2){
            a.adderror('you cannot delete man');
        }
    }

}