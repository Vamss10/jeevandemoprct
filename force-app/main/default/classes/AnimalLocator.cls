public class AnimalLocator {
    public static String getAnimalNameById(Integer id) {
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals/'+id);
        request.setMethod('GET');
        HttpResponse response = http.send(request);
        String strResp = '';
        if (response.getStatusCode() == 200) {
            system.debug(response.getBody());
           Map < String, Object > results = (Map < String, Object >) JSON.deserializeUntyped(response.getBody());
            system.debug(results);
           Map < string, Object > animals = (Map < String, Object >) results.get('animal');
             system.debug(animals);
           strResp = string.valueof(animals.get('name'));
            system.debug(strResp);
        }
        return strResp ;
    }  
}