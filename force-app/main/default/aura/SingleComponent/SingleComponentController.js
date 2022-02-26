({
	handleClick : function(component, event, helper) {
		$A.createComponent('lightning:input',
                         {'label':'Enter Your Name','aura:id':'aId'},
                         function(fId,status,errorMessage){
            if(status === 'SUCCESS'){
                var body = component.get('v.body');
                body.push(fId);
                component.set('v.body',body);
            }
            else if(status === 'ERROR'){
                
            }
                else if(status === 'INCOMPLETE'){
                    
                }
            
        }
        )
	}
})