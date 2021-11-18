package beans;

public class UserBean
{
    private String uid;         //Username
    private String password;    //Password    
    private String firstName;   //First Name
    private String lastName;    //Last Name
    private String email;       //Email
    private int cell;    	//Cell number
    private int phone;    	//Phone number
    private String userGroup;   //User group

    public UserBean() {}

    public void setUid(String str) {uid = str;}
    public String getUid() { return uid;}

    public void setPassword(String str) {password = str;}
    public String getPassword() {return password;}    

    public void setFirstName(String str) {firstName = str;}
    public String getFirstName() { return firstName;}

    public void setLastName(String str) {lastName = str;}
    public String getLastName() { return lastName;}
   
    public void setEmail(String str){email = str;}
    public String getEmail() { return email;}

    public void setCell(int num) { cell = num;}
    public int getCell() { return cell;}
    
    public void setPhone(int num) { phone = num;}
    public int getPhone() { return phone;}
    
    public void setUserGroup(String str) {userGroup = str;}
    public String getUserGroup() { return userGroup;}
}
