public class AsyncExecutionExample implements Queueable {
    public AsyncExecutionExample()
    {
        methods();
    }
    public void execute(QueueableContext context)
    {
     Contact c = new Contact();
        c.LastName = 'Deboshree';
        insert c;
        system.debug(context.getjobId());     
    }
    public static void methods()
    {
      
      system.debug('Future method2');   
    }
    

}