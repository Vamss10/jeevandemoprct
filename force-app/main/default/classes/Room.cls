public class Room implements Hotel {
    public  void room1()
    {
        System.debug('Hi');
    }
    public Integer room2(integer y)
    {
        System.debug(y);
        return y;
    }
    public String room3(String s)
    {
        System.debug(s);
        return s;
    }
    public static void meal()
    {
         System.debug('Hey');
    }
   public  void Hotel()
    {
        System.debug('hotels in room');
    }
  public List<Sobject> room4()
  {
      List<Sobject> s1 = [select Name from Account];
   for(integer i = 0; i < s1.size(); i++)
   {
       system.debug(s1[i]);
   }
      return s1;
  }
    

}