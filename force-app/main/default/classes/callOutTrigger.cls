global class callOutTrigger implements Schedulable {
   global void execute(SchedulableContext SC) {
   }
   // List<Contact> a1 = new List<Contact>();
   /* public callOutTrigger(List<Contact> a){
        List<Contact> a1 = a;
      
            
    }*/
     //serialize(List<Contact> a1);
    public static String serializ(List<Account> a1){
        system.debug(JSON.serializePretty(a1)); 
        return (JSON.serializePretty(a1));
    }
    
   
       
    

}