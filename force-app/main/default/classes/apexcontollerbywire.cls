public with sharing class apexcontollerbywire {
    
    public static list<Account> getAccounts(){
        list<Account> a = [select Id,Name from Account LIMIT 5];
        return a;
    }
}