package com.onlineshop.domain;

public class User {
    private Integer id;
    private String username;
    private String password;
    private String email;
    public User(String username, String password) {
        super();
        this.username = username;
        this.password = password;
    }

    public User() {
    }

    public User(Integer id, String username, String password) {
		super();
		this.id = id;
		this.username = username;
		this.password = password;
	}

	public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }
    public String getUsername() {
        return username;
    }
    public void setUsername(String username) {
        this.username = username;
    }
    public String getPassword() {
        return password;
    }
    public void setPassword(String password) {
        this.password = password;
    }
    public String getEmail() {
        return email;
    }
    public void setEmail(String email) {
        this.email = email;
    }
    public User(String username, String password, String email) {
		super();
		this.username = username;
		this.password = password;
		this.email = email;
	}

	public User(Integer id, String username, String password, String email) {
		super();
		this.id = id;
		this.username = username;
		this.password = password;
		this.email = email;
	}

	public String toString(){
        return "UserDao[id="+id+",username="+username+",password="+password+",email="+email+"]";
    }
	@Override
	  public boolean equals(Object obj) {
	     if(this == obj)
	         return true;
	     if(obj == null)
	         return false;
	     if(!(obj instanceof User))
	         return false;
	     User other = (User)obj;
	     if(username == null && password == null){
	    	 return false;
	     }else if(other.username !=null && other.password !=null){
	    	 if(username.equals(other.username) && password.equals(other.password))
		         return true;
	     }
	     return false;
	  }
}
