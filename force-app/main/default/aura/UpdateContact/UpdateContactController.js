({
	updateRec : function(component, event, helper) {
		var action = component.get('c.updateRating');
        action.setParams({
            'recid' : component.get('v.recordId')
        });
        action.setCallback(this,function(response){
            var state = response.getState();
            if(state === 'SUCCESS')
            {
                $A.get('e.force:closeQuickAction').fire();
            }
        });
        $A.enqueueAction(action,false);
        
	}
})