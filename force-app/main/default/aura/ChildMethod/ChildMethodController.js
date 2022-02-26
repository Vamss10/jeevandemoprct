({
	getMessage : function(component, event, helper) {
      var bparam = event.getParam('arguments');
        console.log(JSON.stringify(bparam));
        if(bparam)
        {
        var n = bparam.Names;
            console.log(n);
            return n;
        }
	}
})