public class CaseInsertCtrl {
    public Case vCase {get;set;}  // Declaring case object . vCase is reference to be used in apex page.
    public list<Case> cases {get;set;}    // Declaring list of cases. cases is referenece here. <Case> - Case object
    public Id CaseId {get;set;}   //    
    
    public CaseInsertCtrl(){  // Contructor . syntax is public with class name without any return type.
        vCase = new Case();     // Initializing case object to allocate heap memory
        cases = [Select Id,Status,Origin,Comments,SuppliedEmail from Case];
    }
    public void insertCase(){
        insert vCase;
    }
    public void clearCase() {
       // vCase = new Case ();      This will erase the allocated heap memory.
       vCase.clear();    
        
    }  
    
    public void editAccount(){
         
        Id csid = ApexPages.currentPage().getParameters().get('abc');
        Case cas = [Select Id,Status,Origin,Comments,SuppliedEmail from Case where id =: csid];
        vCase = cas;
    }
    
    public void deleteAccount(){
        Id delid = ApexPages.currentPage().getParameters().get('cde');
        Case bas = [Select Id,Status,Origin,Comments,SuppliedEmail from Case where id =: delid];
        delete bas;
    }
}