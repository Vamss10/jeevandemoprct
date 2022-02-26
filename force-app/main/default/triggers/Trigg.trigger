trigger Trigg on Account (after insert) {
 
    System.enqueueJob(new SampleQueueing(Trigger.New));
    

}