public class ContactWrapper {
  public List<ContactData> dataList;

  public class ContactData {
    public String LastName;
    public String FirstName;
    public String Email;
    public String Id;
    public Map<String, Object> attributes; // This will capture any additional attributes if needed
  }
}