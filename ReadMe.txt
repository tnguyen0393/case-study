User Stories
- As a site vistior, I want to be able to be able to easily navigate the website
- As a site visitor, I want to be able to have an overview of the food menu available
- As a site visitor, I want to have access to additional information on the food
- As a site administrator, I can be able to have access to administrative tools to make modifications to the website.
- As a site administrator, I need to be able to log out of the administration page
- As a site administrator, I want there to be security, so random visitors cannot access the administration page
- As a site administrator, I have the ability to add, remove, update, and read items on the menu
- As a site administrator, if I enter the wrong credentials, I want the website to show me an error
- As a site administrator, I want the website to immediately display the changes whenever they are applied from the administrator controls

The purpose of the web application is that the website guest can navigate and view food items on the menu. Administrators will need to authenticate themselves to have authorization onto the administration page. As website administrators, they want to create, remove, read, and update their menu items. Whatever changes they made will be saved and stored in a database, and the website's menu will be updated automatically.

The technology used in the web application is Spring MVC, which is a framework used to implement Inversion of Control and Dependency Injection. JSTL and Taglibs aided in modifying JSP files where they provided everyday tasks such as iterations and conditionals. Hibernate was used to map object-oriented models to relational databases, and MySQL-connector was used to connect MySQL database. Commons FileUpload and Commons IO were used to allow the users to upload a file, automatically name the file, and store it in a separate folder. Spring Security was implemented to intercept users from accessing admin and redirected them to the login page. Spring Security was also used to authenticate the user to gain access to the administration page.