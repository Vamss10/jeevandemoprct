({
	savecontact : function(component, event, helper) {
        var cons = component.get('c.createcon');
        console.log(component.get('v.createcontact'));
        cons.setParams({
            "con": component.get('v.createcontact'),
            "aId": component.get('v.recordId')
            
        });
        cons.setCallback(this,function(response){
           var state = response.getState(); 
            if(state === "SUCCESS")
            {
                var responsevalue = response.getReturnValue();
                console.log(responsevalue);
                
            }
        });
        
        $A.enqueueAction(cons,false);
		
	}
})