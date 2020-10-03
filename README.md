# T1A3 - Terminal Application
##### Stephanie Vallance

## Purrito
### How to Install

#### Software Development Plan

Purrito provides a way to manage and care for cats in a boarding facility.  

When caring for cats in a boarding facility it can be difficult to keep track of what the requirements of each cat are.

Typically, Check-in and Check-out dates are managed through an appointment or calendar type booking system, but the individual care requirements for each cat are usually handwritten and kept on clipboards or a whiteboard for each cat.  
Perhaps you need to prepare meals for 40 different cats who all require different food!  You either need to write a list, or bring the clipboards to the kitchen with you to keep track of who needs what.

The **purpose** of Purrito is to provide a quick overview of which cats are currently in boarding and what their requirements are for both morning and evening mealtimes. It will reduce time wasted preparing lists or clipboards for boarding cats and work towards a paperless facility.

The **target audience** is animal attendants caring for cats in a boarding facility.  
However, the app could easily be adapted to care for other animals, or expanded to other audiences - to keep track of vehicles that require servicing, children attending daycare, etc.


#### Features


Navigation within Purrito needs to be fast and simple to suit the audience.  
The user will either nagivate the menu with up and down arrows and return, or will be prompted with the kind of information required. eg. 'Enter name', or 'Enter ID'. 

When the application is started, the user will be presented with a main menu of options. 
![Purrito Starting Screen](/img/startup.png)

- **View All Cats**
    Displays a table created with TTY-Table containing all cats in the database and their details.  
    If there are no cats to display (the database is empty), the user will be provided a message saying so. 
    The user does not interact with this feature, so possibility of errors is low, however, if the user's terminal is set with too few columns to display the table, the table will switch to vertical orientation and the user will be presented with a message to advise the table exceeds maximum width.

- **View Checked In Cats**
    As above, a table will be displayed, but this time only showing the cats that are currently checked in to boarding.  
    The same method is used to display both tables, but depending on which menu option the user selected, the Controller will pass a different argument to tables.rb to determine which information will be displayed - either all cats, or cats with `checked_in: true`
    With both this and the previous table there may be so many results that the printed table is too long to comfortably display.  Version 2.0 should include pagination to only display a controlled number of rows at once. 
- **Check In**
    The user will be prompted to search for a cat either by ID number or name.  
    If a user searches by name they must enter at least two characters and matching results will be displayed in a table for the user to select the correct cat by ID number.  

    Once the user has entered an ID number matching a cat in the database, the app will attempt to check the cat in by setting `checked in:` to `true` .  If the cat is already checked in they will be presented with a message to say this is the case and then sent back to the main menu, or a successful message will appear and the cat's check-in status will be updated in the database. 
    If there are no matches for name or ID entered the user will be advised and sent back to the main menu.
   
- **Check Out**
    As with checking in, this menu option utilises the same `search` method and the same `check` method to set the cat's `checked in` state to `false`.  
    The `check` method could be refactored and made a lot more dry, but it currently works well and handles four scenarios using one method. 
- **Create New Cat**
    Create Cat obtains cat details from the user through a series of prompts created with TTY-Prompt.  Each input is validated to have a minimum of 2 letters, and no more than 10 characters.  The user will not be able to proceed until a valid input is provided and given guidance on what must be provided.
    Once the cat's profile is completed, the cat will be saved into the YAML database file and assigned an ID equal to the array length + 1.  If the YAML file is missing, a new one will be created.  A success message is displayed.   
    As the app does not currently allow for cats to be deleted, the incremental ID assignment will not cause clashes.  Rather than adding a 'delete' feature, I would prefer to use an 'archive' as this is more common in veterinary softwares due to legal requirements to keep records and would still allow this style of ID assignment. 
    I would also like to add an escape method for the user to cancel creation of a new cat - currently once the user selects the 'Create New Cat' menu option they must continue until the profile is complete.

- **View One Cat**
    This feature utilises the same `search` method as used by Check In and Check Out, once the correct cat has been identified, the ID number is passed to the Views module for the cat to be displayed as a single ID card.  
- **Show Meals**
    This feature presents the user with a TTY-Prompt menu to select either Morning Meals or Evening Meals.  Once selected, the Views module will display a table containing cats with `checked_in: true`, displaying their name, spicy level and meal for that time of day.  
    If there are no cats currently checked in, the user will be presented with a message declaring this instead. 

Because much of the app is handled with TTY-Prompt, user input is guided and validated.  This should mean there is little room for error due to unexpected inputs. 

####Planned Features
- **More Detailed Profiles**
Add other essential identifiers for cats.  Surnames, age and weight. Could also include a section for the user to add more detailed notes at time of checking in and essential things that need to be checked prior to boarding such as vaccination status and flea control. 
- **Archive**
Add a feature to set a cat's `archive: true`.  An archived cat will not display in any tables.  This is an alternative to a delete feature, as the app may be used by veterinary professionals and records need to be kept, not deleted. 
- **Edit**
Add the ability to edit a cat's profile.  Immutable characteristics like Name, Breed, Colour will not be able to be edited, but the user may wish to edit the cat's preferred meals.
- **Medications**
Add the option to include a cat's medication's to their AM or PM requirements.  


#### Outline of User Interaction and Experience

When the application is started, the user is presented with a menu and a prompt to navigate the menu with up or down arrows.
The active menu item is highlighted with magenta colouring, indentation and a chilli marker.

Press the up and down arrows until the desired menu item is selected.  
Press return to do the selected action and follow any prompts.

**View All Cats**
All cats in the database will be presented in a table.  
You may want to select this item to check if a cat exists in the database, or to obtain the ID number of a cat you wish to check into boarding.
Cats with a spicy rating of 1 or above will be flagged with chilli icons to alert staff to take extra care in handling these guests.
**View Checked In Cats**
All cats currently checked into boarding will be presented in a table. 
Cats with a spicy rating of 1 or above will be flagged with chilli icons to alert staff to take extra care in handling these guests.
**Check In**
Select this item to check a cat into boarding.  If you already know the ID Number of the cat you need, enter it to check them in, or you can search by name.  
Follow the prompts to search for and identify the correct cat.
You will be advised when the cat has been successfully checked in. 
**Check Out**
Select this item to check a cat out of boarding.  If you already know the ID Number of the cat you need, enter it to check them out, or you can search by name.  
Follow the prompts to search for and identify the correct cat.
You will be advised when the cat has been successfully checked out. 
**Create New Cat**
Select this item to add a new cat to the database.  New cats will always be Checked Out by default. 
Enter the information as requested by the prompts to complete the cat's profile.  This must be done carefully as currently the details cannot be edited once created. 
You must enter a minimum of two and maximum of ten characters for each entry.
The cat's spiciness level is between 0 and 3.  0 is a friendly cat, 3 is a very spicy cat who requires great care when handling.  
**Show Meals**
Once presented with the meals menu, use the up and down arrows and press return to select the time of day - morning or evening.
You will be presented with a table containing all checked in cats and the meals they require for the chosen time of day.  
Chilli markers will be used to identify spicy cats who require extra care when handling. 
**Quit**
When you are done, select quit to close the application. 

####Troubleshooting
**Tables displaying incorrectly**
You may need to adjust the columns in your terminal shell to view tables.  

In your terminal shell, select Settings or Preferences and locate the columns and rows settings (This may be under Terminal Appearance).  
**100 columns** should suffice for most situations.
It may also help to maximise your terminal window or use fullscreen mode. 

Data will still be presented in more narrow terminals, however, it will be in vertical orientation and less pleasing to view. 




#### Flow Diagram
 
![Flow Diagram](/img/Purrito.png)
#### Implementation Plan

*Trello board*
*Checklists for each feature should have at least 5 items*
*Deadlines & Prioritisation*
