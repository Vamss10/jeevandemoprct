public class TemperatureCheck {

    public static decimal FartoCel(Decimal f)
    {
        decimal cs = (f - 32) * 5/9;
        return cs.setScale(2);
    }
    public static string task(String s)
    {
        if(string.isBlank(s) || s.length() > 2)
        {
            return null;
        }
        string tk;
        if(s =='NY')
        {
            tk = 'cool';
        }
        else
        {
            tk = 'hot';
        }
        return tk;
    }
    
}