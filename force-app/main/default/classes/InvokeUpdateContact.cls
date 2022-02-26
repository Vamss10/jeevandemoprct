public class InvokeUpdateContact {
    @InvocableMethod
    public static void methods(List<Contact> ids)
    {
        ids[0].put('AssistantName','Yes! you are my Assistant');
        update ids;
    }

}