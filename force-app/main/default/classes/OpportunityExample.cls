public class OpportunityExample {

    public String Name {get;set;}
    public String Description {get;set;}
    public Decimal Amount {get;set;}
    public Date CloseDate {get;set;}
    public String MainCompetitors {get;set;}
    public String OrderNumber {get;set;}
    public String TrackingNumber {get;set;}
    public String OpStage {get;set;}
    public Decimal OpSal {get;set;}
   // public Opportunity OpSal{get;set;}

    public OpportunityExample (){
          // OpSal = new opportunity();
       // Opportunity Opp = new Opportunity();
       /*
        Name = null;
        Description = null;
        Amount = null;
        CloseDate = null;
        MainCompetitors = null;
        OrderNumber = null;
        TrackingNumber = null;
        OpStage = null;
        */
    }
    
    public void saveRecord(){
        Opportunity Opp = new Opportunity();
        Opp.Name = Name;
        Opp.Description = Description;
        Opp.Amount = Amount;
        Opp.CloseDate   = CloseDate;
        Opp.MainCompetitors__c = MainCompetitors;
        Opp.TrackingNumber__c = TrackingNumber;
        Opp.OrderNumber__c = OrderNumber;
        Opp.StageName= OpStage;
        Opp.Salary__c= OpSal;
        insert Opp;
        
    }
    
    public void clearFields(){
         //Opportunity Opp = new Opportunity();
        Name = null;
        Description = null;
        Amount = null;
        CloseDate = null;
        MainCompetitors = null;
        OrderNumber = null;
        TrackingNumber = null;
        OpStage = null;
  }}