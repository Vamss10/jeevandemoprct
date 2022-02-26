public class servicenowupdate {
    
    public static void serviceNowUpdateMethod(List<Opportunity> opp1){
         List<Opportunity> opp = [select Id,Name,Amount,Description,ExpectedRevenue from opportunity where Id=: Trigger.New];
   string str = JSON.serializePretty(opp);
   system.debug(str);
   }
    
    public class locationWrapperClass{
        public string Id;
        public string Name;
        public Double Amount;
        public string Description;
        public Double ExpectedRevenue;
             
            
    }

}