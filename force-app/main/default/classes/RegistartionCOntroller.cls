public class RegistartionCOntroller {
    
    public string strname{get;set;}
    public string strPhone{get;set;}
    public string strFax{get;set;}
    public string strWebsite{get;set;}
    
    public RegistartionCOntroller(){
        
    }
    
    public pagereference saveRecord(){
       /* if(strPhone == '' || strPhone == null){
            ApexPages.Message myMsg = new ApexPages.Message(ApexPages.Severity.ERROR,'Error: Please enter phone');
            ApexPages.addMessage(myMsg);
        }else{ */
            account obj = new account();
            obj.Name = strname;
    	    obj.phone = strPhone;
    	    obj.Fax = strfax;
        	obj.website = strwebsite;
            insert obj;
            
          //  strname = null;
          //  strPhone = null;
          //  strFax = null;
         //   strWebsite = null;
        //}
        
        pagereference pgref = new pagereference('/apex/RegistartionPage');
        pgref.setRedirect(true);
        return pgref;
    }
    

}