public class AccountListCtrl {
    public List<Account> accountList{get; set;}
    private List<Account> accList;
   
  
 public AccountListCtrl(){
   accountList = new List<Account>();
    accountList = [Select Id, Name, Phone, Website from Account];
    accList = new List<Account>();
     accList = [Select Id, Name, Phone from Account];
     
           if(accList != null && !accList.isEmpty()){
            for(Account accountObj : accList){
                CustomAccount customAccObj = new CustomAccount();   //Create the object of wrapper class
                customAccObj.isSelected = false;
                customAccObj.accountId = accountObj.Id;
                customAccObj.accountName = accountObj.Name;
                customAccObj.accountPhone = accountObj.Phone;
                
                // customAccountList.add(customAccObj);
                
            }
        }
    }
       //Wrapper class
    public class CustomAccount{
        public Boolean isSelected{get; set;}
        public String accountId{get; set;}
        public String accountName{get; set;}
        public String accountPhone{get; set;}
        
        public CustomAccount(){
  }
 }
}