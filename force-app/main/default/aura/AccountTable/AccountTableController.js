({
	doinit : function(component, event, helper) {
      component.set('v.mycolumns', [

            {label: 'Account Name', fieldName: 'Name', type: 'text'},

                {label: 'Industry', fieldName: 'Industry', type: 'text'},

                {label: 'Phone', fieldName: 'Phone', type: 'Phone'},

                {label: 'Website', fieldName: 'Website', type: 'url '},
          {type : 'button',typeAttributes :{ label : 'View', name : 'view',title :'view',
              disabled:false,
              value : 'view'}},
           {type : 'button',typeAttributes :{
              label : 'Edit',
              name : 'Edit',
               title :'Edit',
              disabled:false,
              value : 'Edit'}}

            ]);

        var action = component.get("c.fetchAccounts");

        action.setParams({

        });

        action.setCallback(this, function(response){

            var state = response.getState();

            if (state === "SUCCESS") {

                component.set("v.acctList", response.getReturnValue());

            }

        });

        $A.enqueueAction(action);

    },
    
	viewRecord : function(component, event, helper) {
		
    
    var recId = event.getParam('row').Id;
    var acname = event.getParam('action').name;
    if(acname == 'Edit'){
    var ed = $A.get('e.force:editRecord');
    ed.setParams({'recordId' : recId});
   ed.fire();
}
 else if (acname == 'view')
 {
     var v = $A.get('e.force:navigatetoURL');
     console.log('test the view');
     v.setParams({'https://vamss-dev-ed.lightning.force.com/lightning/r/Account':'/'+recId});
     v.fire();
 }
    
}

	
 
})