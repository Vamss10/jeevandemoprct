public class salesforceA {
    
    public static void callCases(){
        Http h = new Http();
        HttpRequest hreq = new HttpRequest();
        hreq.setEndpoint('callout:SFB/services/apexrest/Case');
        hreq.setMethod('GET');
       // hreq.setHeader('Authorization', 'Bearer !AQ4AQJQk2rtdA4KczoKM1OjaQwyQt5vgeWEy6EeK_GK1yAYw2BZHnoruWCkiCNdhICTg1L3Pw5fdrdRRYJmPrX.UB3rZ5gIE');
        HttpResponse hres = h.send(hreq);
        system.debug(hres.getStatusCode());
        if(hres.getStatusCode() == 200)
        {
            system.debug(hres.getBody());
            list<object> s = (list<object>)JSON.deserializeUntyped(hres.getBody());
            system.debug(s);
        }
        
    }
    
    public static void createCase(){
          Http h = new Http();
        HttpRequest hreq = new HttpRequest();
        hreq.setEndpoint('callout:SFB/services/apexrest/Case');
        hreq.setMethod('POST');
        hreq.setBody('{"subject" : "coming from Salesforce A","status" : "New","origin" : "Phone"}');
        hreq.setHeader('Content-Type', 'application/json;charset=UTF-8');
       // hreq.setHeader('Authorization', 'Bearer !AQ4AQJQk2rtdA4KczoKM1OjaQwyQt5vgeWEy6EeK_GK1yAYw2BZHnoruWCkiCNdhICTg1L3Pw5fdrdRRYJmPrX.UB3rZ5gIE');
        HttpResponse hres = h.send(hreq);
        system.debug(hres.getStatusCode());
        if(hres.getStatusCode() == 200)
        {
            system.debug(hres.getBody());
            
        }
    }

}