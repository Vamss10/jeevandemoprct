({
	ChildAppEvent : function(component, event, helper) {
        var sujji = $A.get('e.c:ApplicationEvent');
        sujji.setParams({
            "message" : "i am from Event which was triggered from childAppEvent"
        });
        sujji.fire();
	}
})