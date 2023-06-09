public class ContactsViewController {

    public List<contact> contactsList {get;set;}
        
        public ContactsViewController ()
        {
            contactsList = [select Account.Name, Email from Contact];   
        }
}