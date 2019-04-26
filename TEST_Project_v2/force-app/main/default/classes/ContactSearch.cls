public class ContactSearch {
	public static list<Contact> searchForContacts(string lname, string postal)
    {
        list<Contact> cn = [Select id,name from Contact where LastName=:lname and MailingPostalCode=:postal];
        return cn;
    }
}