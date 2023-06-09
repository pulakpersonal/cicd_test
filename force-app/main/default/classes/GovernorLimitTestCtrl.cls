public class GovernorLimitTestCtrl {
    
    public String userName{get; set;}
    public List<Account> accountList {get; set;}
    public List<Contact> contactList {get; set;}
    
    
    public GovernorLimitTestCtrl(){
    
        userName = 'Sanjay';
        
        accountList = [Select  Name,Phone,Rating from Account];
        contactList = [Select LastName, Email from Contact];
        
    }
}