public class FutureClass {
    @future
    public static void future1()
    {
     Profile p = [SELECT Id FROM Profile WHERE Name='Standard User'];
        UserRole r = [SELECT Id FROM UserRole WHERE Name='COO']; 
        User u = new User(alias = 'al', email='em', 
            emailencodingkey='UTF-8', lastname='lname', 
            languagelocalekey='en_US', 
            localesidkey='en_US', profileid = p.Id, userroleid = r.Id,
            timezonesidkey='America/Los_Angeles', 
            username='uname');
        insert u;
        
        Account a = new Account(Name ='xyz');
        insert a;
    }
   
    public static void test1()
    {
        system.debug('Hi');
        
    }
    @future public static void test2()
    {
        System.debug('Hey');
    }
 
}