public class ContactAndLeadSearch {
    public static List<List< SObject>> searchContactsAndLeads(string param){
        List<List< SObject>> sobjlist = new List<List< SObject>>();
        list<Contact> con = [select id,name from Contact where Firstname=:param OR lastname=:param];
        list<Lead> ld = [select id,name from Lead where Firstname=:param OR lastname=:param];
        sobjlist.add(con);
        sobjlist.add(ld);
        return sobjlist;
    }

}