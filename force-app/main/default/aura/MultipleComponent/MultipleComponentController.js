({
	handleClick : function(component, event, helper) {
		$A.createComponents([
            ["lightning:input",
             {
                 'label':'Enter your Last Name',
                 'aura:id' :'Last'
             }],
            ["lightning:input",
             {
                 'label':'Enter your First Name',
                 'aura:id' :'First'
             }],
             ["lightning:input",
             {
                 'label':'Enter your Phone Number',
                 'aura:id' :'Phone'
             }],
            ["lightning:button",
             {
                 'label':'ClearAll',
                 'aura:id' :'DestroyAll',
                 'onclick' : component.getReference('c.Destroy')
             }]
        ],function(rId,status,errorMessage){
             if(status === 'SUCCESS'){
                var body = component.get('v.body');
                 rId.forEach(function(item)
                             {
                                 body.push(item);})
                component.set('v.body',body);
            }
            else if(status === 'ERROR'){
                
            }
                else if(status === 'INCOMPLETE'){
                    
                }
            
        })
	},
    Destroy : function(cmp)
    {
    var des = cmp.find('DestroyAll');
       des.destroy();
        var des1 = cmp.find({instancesOf:"lightning:input"});
        des1.forEach(function(item)
                             {
                               item.destroy();
                             })
}
})