trigger HelloWorldTrigger on Account (before insert,before update) {
   	System.debug('Hello World!--->'+ Trigger.new);

}