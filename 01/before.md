## Initial Setup if you want to play arround on your own azure cloud subscription

1.Register a new application:- 

- Under Manage, select App registrations.
- Click on New registration.
- Enter a name for your application (e.g., Terraform).
- For Redirect URI, leave it as is (you don't need to set this for Terraform).
- Click Register.

2. Create a Client Secret
- Generate a client secret:
- In the application registration page, go to Certificates & secrets.
- Under Client secrets, click New client secret.
- Add a description and set an expiry period.
- Click Add.
- Copy the Value of the client secret and store it securely. This will be used as the client_secret.

3. Assign a Role to the Application

Navigate to your subscription:

In the Azure portal, go to Subscriptions.
Select the subscription you want to use with Terraform.
Assign a role to the application:

- Click on Access control (IAM).
- Click Add role assignment.
- Select a role (e.g., Contributor).
- Under Assign access to, select User, group, or service principal.
- Search for the name of your registered application.
- Select the application and click Save.
- Note the Subscription ID:

In the subscription overview, note down the Subscription ID. This will be used as the subscription_id.

> Once you have gathered all the necessary values, you can configure your provider "azurerm" block in your Terraform configuration file as follows:

----


### What are data types and how it helps 
1. It is a type of data which you want to use it on tfvars file
2. this is achived by defining varibles 
3. you could either define empty or strongly typed 



#### What is Data Structure and how to use them. 
1. Define the structure 
2. Initialze the data structure 
3. figure out how to achive tha data structure 




## Set vs List 
Key Differences Between list and set
#### Order:

List: Ordered collection of elements. The order in which elements are specified is preserved.
Set: Unordered collection of unique elements. The order is not preserved and elements must be unique.
 #### Uniqueness:

List: Can contain duplicate elements.
Set: Cannot contain duplicate elements; all elements must be unique.
#### Indexing:

List: Supports indexing to access elements by their position (e.g., list[0]).
Set: Does not support indexing because there is no guaranteed order.