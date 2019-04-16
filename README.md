# This repo is the coding challenge for iOS Engineer candidates.  
This app uses a redux-style architecture to increment a number label.  It also has a separate table view that should show an ordered list of numbers from 1 to 100, approximately five seconds after the table view appears.

Find the bugs in the counter label implementation and resolve them.  Also, create and implement navigatation (to and from) a new view controller that will download and display an image (dev's choice).

# Instructions:

    1) Create local clone of the repo.
    2) Fix any crashing.
    3) Ensure that the +/- buttons correctly increment/decrement the label.
    4) Implement a new view controller that asynchronously downloads an image and then displays it.
    5) Ensure the view for `NumberedListTableViewController` initially shows an empty table.  Five seconds after `viewDidLoad` occurs, the table should refresh to show an ordered list from 1 to 100, in ascending order.  It should do so in a robust, bug-free manner.  Use GCD to build the list of numbers.  Don't use the main thread to build the list.  Ensure the main thread is not blocked while the list is generated.  Minimize the number of times the table reloads.
    6) Commit to your local Github repo.
    7) Send us a zip file of your local modified clone.  Please include your hidden `.git` folder.
    8) Bonus points if you write relevant unit test(s).
