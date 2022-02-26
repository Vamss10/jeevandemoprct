public abstract class Parent {
public static integer i;
final integer j;    
    static
    {
        i = 10;
        system.debug('i am static in abstract class');
    }
    public static void method()
    {
        System.debug('i am a static method');
    }
    protected parent()
    {
        this(i);
        System.debug('i am a default constructor'); 
    }
    public parent(integer s)
    {
        System.debug('i am a overloaded constructor'); 
         System.debug(s);        
    }
    protected abstract void method1(integer x);
     protected abstract void methods();
    
    
    
    
    
    

}