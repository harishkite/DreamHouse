trigger ClosedOpportunityTrigger on Opportunity (after insert, after update) {
    List<Task> taskList = new List<Task>();
    
    for (Opportunity o :[SELECT Id,Name FROM Opportunity
                        WHERE Id IN :Trigger.New]){
        taskList.add(new Task(Subject='Follow Up Test Task',
                             WhatId=o.Id,
                             Status='Not Started',
                             Priority='Normal'));
    }
    if (taskList.size() > 0){
        insert taskList;
    }
}