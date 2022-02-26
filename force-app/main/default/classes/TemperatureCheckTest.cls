@isTest
public class TemperatureCheckTest {

    @isTest static void Test1()
    {
        Decimal cs = TemperatureCheck.FartoCel(70);
        system.assertEquals(21.11, cs);
        
    }
    @isTest static void Test2()
    {
        Decimal cs = TemperatureCheck.FartoCel(32);
        system.assertEquals(0, cs);
    }
    @isTest static void Test3()
    {
        Decimal cs = TemperatureCheck.FartoCel(212);
        system.assertEquals(101, cs,'it is fine');
    }
    @isTest static void Test4()
    {
        Decimal cs = TemperatureCheck.FartoCel(-10);
        system.assertEquals(-23.33,cs);
    }
    @isTest static void Test5()
    {
        string p = TemperatureCheck.task('US');
        system.assertEquals('hot', p);
    }
    
}