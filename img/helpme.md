#Purrito


## User Guide


### How to Install

####System Requirements

- Ruby (Purrito was created with Ruby version 2.7.0)
https://www.ruby-lang.org/en/
- Bundler 
Visit https://rubygems.org/gems/bundler
then `gem install bundler`.
You may need to type `sudo gem install bundler` to install with the required permissions.



![Repo](/img/repo.png)

Please visit the Purrito Github Repository -  https://github.com/steph603/Purrito
and download the code or, in your terminal type:

`git clone https://github.com/steph603/Purrito`

From the application directory, type `bundle install` or `sudo bundle install` to install the required Ruby Gems

Then to run Purrito, type
`purrito.sh`, or from a zsh or other shell, type `bash purrito.sh`


### How to Use


**Main Menu**
When the application is started, you will be presented with a menu and a prompt to navigate the menu with up or down arrows.
The active menu item is highlighted with magenta colouring, indentation and a chilli marker.

Press the up and down arrows until the desired menu item is selected.  
Press return to do the selected action and follow any prompts.
![Purrito Starting Screen](/img/startup.png)

**View All Cats**
All cats in the database will be presented in a table.  
You may want to select this item to check if a cat exists in the database, or to obtain the ID number of a cat you wish to check into boarding.
Cats with a spicy rating of 1 or above will be flagged with chilli icons to alert staff to take extra care in handling these guests.

**View Checked In Cats**
All cats currently checked into boarding will be presented in a table. 
Cats with a spicy rating of 1 or above will be flagged with chilli icons to alert staff to take extra care in handling these guests.
![View Cats](/img/viewcats.png)
**Check In**
Select this item to check a cat into boarding.  If you already know the ID Number of the cat you need, enter it to check them in, or you can search by name.  
Follow the prompts to search for and identify the correct cat.
You will be advised when the cat has been successfully checked in. 
![Check In](/img/checkin.png)
**Check Out**
Select this item to check a cat out of boarding.  If you already know the ID Number of the cat you need, enter it to check them out, or you can search by name.  
Follow the prompts to search for and identify the correct cat.
You will be advised when the cat has been successfully checked out. 
**Create New Cat**
Select this item to add a new cat to the database.  New cats will always be Checked Out by default. 
Enter the information as requested by the prompts to complete the cat's profile.  This must be done carefully as currently the details cannot be edited once created. 
You must enter a minimum of two and maximum of ten characters for each entry.
The cat's spiciness level is between 0 and 3.  0 is a friendly cat, 3 is a very spicy cat who requires great care when handling. 
**View One Cat**
To view the details of one cat, either enter their name or ID number if you know it- the same as you would to check in or out a cat. 
When the cat has been located, their individual card will be presented showing all their details. 

![View One Cat](/img/idcard.png)

**Show Meals**
Once presented with the meals menu, use the up and down arrows and press return to select the time of day - morning or evening.
You will be presented with a table containing all checked in cats and the meals they require for the chosen time of day.  
Chilli markers will be used to identify spicy cats who require extra care when handling. 
![Meals](/img/meals.png)
**Quit**
When you are done, select quit to close the application. 

####Troubleshooting
**Tables displaying incorrectly**
You may need to adjust the columns in your terminal shell to view tables.  

In your terminal shell, select Settings or Preferences and locate the columns and rows settings (This may be under Terminal Appearance).  
**100 columns** should suffice for most situations.
It may also help to maximise your terminal window or use fullscreen mode. 

Data will still be presented in more narrow terminals, however, it will be in vertical orientation and less pleasing to view. 