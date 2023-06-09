public class AccountViewController {
    public List<Account> accountList {get;set;}
    
        public AccountViewController () 
        {
                accountList = [Select ID, Name, Phone from Account ] ;
        }


}