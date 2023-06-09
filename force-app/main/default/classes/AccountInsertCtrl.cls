public class AccountInsertCtrl {
    public Account iAccount{get;set;}
    
    public AccountInsertctrl(){
        iAccount = new Account();
    }
    
    public void insertAccount(){
        insert iAccount;
    }
    
    public void clearAccount(){
        iAccount.clear();
       
    }
 

}