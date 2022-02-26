public class JWTIntegration {
    private JWTConfiguration config;
    JWTIntegration(JWTConfiguration config)
    {
        this.config = config;
    }
    
    public void requestAccessToken()
    {
        map<string,string> m = new map<string,string>();
        m.put('grant_type','urn:ietf:params:oauth:grant-type:jwt-bearer');
        m.put('assertion',CreateToken());
        Http h = new Http();
        HttpRequest hreq = new HttpRequest();
        hreq.setHeader('Content-Type', 'application/x-www-form-urlencoded');
        hreq.setEndpoint('https://' + config.jwtHostName +'/services/oauth2/token');
        hreq.setMethod('POST');
        hreq.setTimeout(60*1000);
       // hreq.setBody(body);
    }
    public string CreateToken()
    {
        string alg = 'RSA256';
        string iss= config.jwtConnectedAppConsumerKey;
        string prn = config.jwtUserName;
        string aud = 'https://'+config.jwtHostName;
        string exp = string.valueOf((system.currentTimeMillis()+60*60*1000));
        header h = new header(alg);
        String headerjson = JSON.serialize(h);
        system.debug('header json' + headerjson);
        Body b = new Body(iss,prn,aud,exp);
        string bodyjson = JSON.serialize(b);
        system.debug('body json' + bodyjson);
        String EncodedJwdHeader = base64urlsafe(blob.valueOf(headerjson));
        String EncodedJwdBody = base64urlsafe(blob.valueOf(bodyjson));
        string Token = EncodedJwdHeader + EncodedJwdBody;
        String signature = base64urlsafe(crypto.signWithCertificate('RSA-SHA256', blob.valueof(Token), config.jwtSignedCertificateName));
        Token = Token+'.'+ signature;
        
        return Token;
    }
       public string base64URlSafe(blob b){

    return EncodingUtil.base64Encode(b).replace('+','-').replace('/','_');   

    }
    public class JWTConfiguration
    {
        public string jwtUserName{get;set;}
        public string jwtConnectedAppConsumerKey{get;set;}
        public string jwtSignedCertificateName{get;set;}
        public string jwtHostName{get;set;}
    }
    
    public class header{
        string alg;
         header(string alg)
        {
            this.alg = alg;
        }
    }
    
    public class Body{
        string iss;
        string aud;
        string prn;
        String exp;
        Body( string iss, string aud, string prn, string exp)
        {
            this.iss = iss;
            this.aud = aud;
            this.prn = prn;
            this.exp = exp;
        }
    }
    Public class JWTException extends Exception
    {
        
    }

}