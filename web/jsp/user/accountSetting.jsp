<%-- 
    Document   : accountSetting
    Created on : 09-Feb-2024, 10:14:59 pm
    Author     : LENOVO
--%>

<%@page import="java.sql.Connection" %>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.SQLException" %>

<%
    String button1 = request.getParameter("btn");
    
    if(button1 != null && button1.equals("Submit")) {
    
        String username = request.getParameter("Username");
        String pass = request.getParameter("Password");
        String name = request.getParameter("Name");
        String email = request.getParameter("Email");
        String dob = request.getParameter("DOB");
        String contactNo = request.getParameter("ContactNo");
        String country = request.getParameter("Country");
        String bio = request.getParameter("Bio");
        String website = request.getParameter("Website");
        String twitter = request.getParameter("Twitter");
        String fb = request.getParameter("Facebook");
        String linkedin = request.getParameter("LinkedIn");
        String insta = request.getParameter("Instagram");
//        String avatar = request.getParameter("Avatar_URL");
        
        String driver = "com.mysql.jdbc.Driver";
//        String url = "jdbc:mysql://localhost:3306/traveltogether?user=root&password=atishay";
        
        try {
            Class.forName(driver);
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/traveltogether","root","atishay");
            
            PreparedStatement ps = con.prepareStatement("insert into usersignupdata values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
            ps.setString(1, username);
            ps.setString(2, pass);
            ps.setString(3, name);
            ps.setString(4, email);
            ps.setString(5, dob);
            ps.setString(6, contactNo);
            ps.setString(7, country);
            ps.setString(8, bio);
            ps.setString(9, website);
            ps.setString(10, twitter);
            ps.setString(11, fb);
            ps.setString(12, linkedin);
            ps.setString(13, insta);
//            ps.setString(14, avatar);
            
            ps.executeUpdate();
            response.sendRedirect("indexUser.html");        
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }
%>

    




<!--Website: wwww.codingdung.com-->
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Travelling Together | Profile Setting</title>
    <link rel="stylesheet" href="styleAccountSetting.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body>
    
        
    <div class="container light-style flex-grow-1 container-p-y">
        
    <form action="back_jsp/accountSetting.jsp" method="post" name="btn">
        <h4 class="font-weight-bold py-3 mb-4">
            Account settings
        </h4>
        <div class="card overflow-hidden">
            <div class="row no-gutters row-bordered row-border-light">
                
                
                    
                <div class="col-md-3 pt-0">
                    <div class="list-group list-group-flush account-settings-links">
                        <a class="list-group-item list-group-item-action active" data-toggle="list"
                            href="#account-general">General</a>
                        
                        <a class="list-group-item list-group-item-action" data-toggle="list"
                            href="#account-info">Info</a>
                        <a class="list-group-item list-group-item-action" data-toggle="list"
                            href="#account-social-links">Social links</a>
                        <a class="list-group-item list-group-item-action" data-toggle="list"
                            href="#account-connections">Connections</a>
                        <a class="list-group-item list-group-item-action" data-toggle="list"
                            href="#account-notifications">Notifications</a>
                        <a class="list-group-item list-group-item-action" data-toggle="list"
                            href="#account-login">Login</a>
                        <a class="list-group-item list-group-item-action" data-toggle="list"
                            href="#account-change-password">Change password</a>
                    </div>
                </div>
                
                
                <div class="col-md-9">
                    <div class="tab-content">
                        <div class="tab-pane fade active show" id="account-general">
                            <div class="card-body media align-items-center">
                                <img src="https://bootdey.com/img/Content/avatar/avatar1.png" alt
                                    class="d-block ui-w-80">
                                <div class="media-body ml-4">
                                    <label class="btn btn-outline-primary">
                                        Upload new photo
                                        <input type="file" name="Avatar_URL" class="account-settings-fileinput">
                                    </label> &nbsp;
                                    <button type="button" class="btn btn-default md-btn-flat">Reset</button>
                                    <div class="text-light small mt-1">Allowed JPG, GIF or PNG. Max size of 800K</div>
                                </div>
                            </div>
                            <hr class="border-light m-0">
                            <div class="card-body">
                                <div class="form-group">
                                    <label class="form-label">Username</label>
                                    <input type="text" name="Username" class="form-control mb-1" value=""required>
                                    
                                </div>
                                <div class="form-group">
                                    <!--<label class="form-label">Name</label>-->
                                    <label class="form-label">Name</label>
                                    <input type="text" name="Password" class="form-control" value="Nelle Maxwell">
                                </div>
                                <div class="form-group">
                                    <label class="form-label">E-mail</label>
                                    <input type="text" name="Email" class="form-control mb-1" value="nmaxwell@mail.com">
                                    <div class="alert alert-warning mt-3">
                                        Your email is not confirmed. Please check your inbox.<br>
                                        <a href="javascript:void(0)">Resend confirmation</a>
                                    </div>
                                </div>
<!--                                <div class="form-group">
                                    <label class="form-label">Company</label>
                                    <input type="text" name="" class="form-control" value="Company Ltd.">
                                </div>-->
                            </div>
                        </div>
            
<!---------------------------------------------------------------------------------------------------  Login field-->
                        <div class="tab-pane fade" id="account-login">
                            <div class="card-body pb-2">
                                <div class="form-group">
                                    <label class="form-label">UserName</label>
                                    <input type="text" name="loginName" class="form-control"required="required">
                                </div>
                                <div class="form-group">
                                    <label class="form-label">Password</label>
                                    <input type="password"  name="loginPassword" class="form-control"required="required">
                                </div>
                                <div class="form-group">
                                    <label class="form-label">EmailId</label>
                                    <input type="text"  name="loginEmail" class="form-control">
                                </div>
                                <div class="text-right mt-3">
                                    <button type="button" name="btnsLogin" value="Submit1" class="btn btn-primary">Submit</button>&nbsp;
                                    <button type="button" class="btn btn-default">Cancel</button>
                                </div>
                            </div>
                        </div>

                        <div class="tab-pane fade" id="account-change-password">
                            <div class="card-body pb-2">
                                <div class="form-group">
                                    <label class="form-label">Current password</label>
                                    <input type="password" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label class="form-label">New password</label>
                                    <input type="password" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label class="form-label">Repeat new password</label>
                                    <input type="password" class="form-control">
                                </div>
                            </div>
                        </div>



                        <div class="tab-pane fade" id="account-info">
                            <div class="card-body pb-2">
                                <div class="form-group">
                                    <label class="form-label">Bio</label>
                                    <input type="textarea" name="Bio" class="form-control" value="Lorem ipsum dolor sit amet">
<!--                                    <textarea class="form-control" name="Bio"
                                        rows="5">
                                        
                                    </textarea>-->
                                </div>
                                <div class="form-group">
                                    <label class="form-label">Birthday</label>
                                    <input type="date" name="DOB" class="form-control" value="May 3, 1995">
                                </div>
                                <div class="form-group">
                                    <label class="form-label">Country</label>
                                    <select class="custom-select" name="Country">
                                        <option value="USA">USA</option>
                                        <option selected value="India">India</option>
                                        <option  value="Canada">Canada</option>
                                        <option value="UK">UK</option>
                                        <option value="Germany">Germany</option>
                                        <option value="France">France</option>
                                    </select>
                                </div>
                            </div>
                            <hr class="border-light m-0">
                            <div class="card-body pb-2">
                                <h6 class="mb-4">Contacts</h6>
                                <div class="form-group">
                                    <label class="form-label">Phone</label>
                                    <input type="text" name="ContactNo" class="form-control" value="+0 (123) 456 7891">
                                </div>
                                <div class="form-group">
                                    <label class="form-label">Website</label>
                                    <input type="text"  name="Website" class="form-control" value>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="account-social-links">
                            <div class="card-body pb-2">
                                <div class="form-group">
                                    <label class="form-label">Twitter</label>
                                    <input type="text"  name="Twitter" class="form-control" value="https://twitter.com/user">
                                </div>
                                <div class="form-group">
                                    <label class="form-label">Facebook</label>
                                    <input type="text"  name="Facebook" class="form-control" value="https://www.facebook.com/user">
                                </div>
<!--                                <div class="form-group">
                                    <label class="form-label">Google+</label>
                                    <input type="text"   name="ContactNo"class="form-control" value>
                                </div>-->
                                <div class="form-group">
                                    <label class="form-label">LinkedIn</label>
                                    <input type="text"  name="LinkedIn" class="form-control" value>
                                </div>
                                <div class="form-group">
                                    <label class="form-label">Instagram</label>
                                    <input type="text"   name="Instagram"class="form-control" value="https://www.instagram.com/user">
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="account-connections">
                            <div class="card-body">
                                <button type="button" class="btn btn-twitter">Connect to
                                    <strong>Twitter</strong></button>
                            </div>
                            <hr class="border-light m-0">
                            <div class="card-body">
                                <h5 class="mb-2">
                                    <a href="javascript:void(0)" class="float-right text-muted text-tiny"><i
                                            class="ion ion-md-close"></i> Remove</a>
                                    <i class="ion ion-logo-google text-google"></i>
                                    You are connected to Google:
                                </h5>
                                <a href="/cdn-cgi/l/email-protection" class="__cf_email__"
                                    data-cfemail="f9979498818e9c9595b994989095d79a9694">[email&#160;protected]</a>
                            </div>
                            <hr class="border-light m-0">
                            <div class="card-body">
                                <button type="button" class="btn btn-facebook">Connect to
                                    <strong>Facebook</strong></button>
                            </div>
                            <hr class="border-light m-0">
                            <div class="card-body">
                                <button type="button" class="btn btn-instagram">Connect to
                                    <strong>Instagram</strong></button>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="account-notifications">
                            <div class="card-body pb-2">
                                <h6 class="mb-4">Activity</h6>
                                <div class="form-group">
                                    <label class="switcher">
                                        <input type="checkbox" class="switcher-input" checked>
                                        <span class="switcher-indicator">
                                            <span class="switcher-yes"></span>
                                            <span class="switcher-no"></span>
                                        </span>
                                        <span class="switcher-label">Email me when someone comments on my article</span>
                                    </label>
                                </div>
                                <div class="form-group">
                                    <label class="switcher">
                                        <input type="checkbox" class="switcher-input" checked>
                                        <span class="switcher-indicator">
                                            <span class="switcher-yes"></span>
                                            <span class="switcher-no"></span>
                                        </span>
                                        <span class="switcher-label">Email me when someone answers on my forum
                                            thread</span>
                                    </label>
                                </div>
                                <div class="form-group">
                                    <label class="switcher">
                                        <input type="checkbox" class="switcher-input">
                                        <span class="switcher-indicator">
                                            <span class="switcher-yes"></span>
                                            <span class="switcher-no"></span>
                                        </span>
                                        <span class="switcher-label">Email me when someone follows me</span>
                                    </label>
                                </div>
                            </div>
                            <hr class="border-light m-0">
                            <div class="card-body pb-2">
                                <h6 class="mb-4">Application</h6>
                                <div class="form-group">
                                    <label class="switcher">
                                        <input type="checkbox" class="switcher-input" checked>
                                        <span class="switcher-indicator">
                                            <span class="switcher-yes"></span>
                                            <span class="switcher-no"></span>
                                        </span>
                                        <span class="switcher-label">News and announcements</span>
                                    </label>
                                </div>
                                <div class="form-group">
                                    <label class="switcher">
                                        <input type="checkbox" class="switcher-input">
                                        <span class="switcher-indicator">
                                            <span class="switcher-yes"></span>
                                            <span class="switcher-no"></span>
                                        </span>
                                        <span class="switcher-label">Weekly product updates</span>
                                    </label>
                                </div>
                                <div class="form-group">
                                    <label class="switcher">
                                        <input type="checkbox" class="switcher-input" checked>
                                        <span class="switcher-indicator">
                                            <span class="switcher-yes"></span>
                                            <span class="switcher-no"></span>
                                        </span>
                                        <span class="switcher-label">Weekly blog digest</span>
                                    </label>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        <div class="text-right mt-3">
            <!--<input type="submit" name="btns" value="Submit" class="btn btn-primary" onclick="check()" >-->
            <input type="submit" class="btn btn-primary" value="Submit" name="btn" onclick="check()">
            <button type="reset" class="btn btn-default">Cancel</button>
        </div>
    
    </form>
    </div>
    
    <script>
        function check(){
            if(btn.UserName.value==null){
                alert("UserName field cannot be empty");
            }
            
            if(btn.Password.value==0){
                alert("Password cannot be empty");
            }
            if(btn.Name.value==0){
                alert("Name cannot be empty");
            }
            if(btn.Email.value==0){
                alert("Email cannot be empty");
            }
            if(btn.ContactNo.value==0){
                alert("ContactNo cannot be empty");
            }
            if(btn.LinkedIn.value==0){
                alert("LinkedIn cannot be empty");
            }
            if(btn.DOB.value==0){
                alert("DOB cannot be empty");
            }
        }
    </script> 
    <script data-cfasync="false" src="/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script>
    <script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.0/dist/js/bootstrap.bundle.min.js"></script>
    <script type="text/javascript">

    </script>
</body>

</html>
