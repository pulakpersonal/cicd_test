public class OpportunityViewController{

    public List<Opportunity> opportunityList {get;set;}
        public OpportunityViewController()
        {
            opportunityList = [Select Name,Type from Opportunity] ;
        }
}