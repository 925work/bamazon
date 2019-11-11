# BAMAZON
## This app will prompt the user on what they would like to purchase from the store. Once a purchase has been made, the in stock quantities will update accordingly. If the store does not have enough to fulfill the user's order, the order will not be placed. 

# Instructions (Once files are cloned onto the local machine with node installed).
1. ## Open bamazoncustomer.js in the terminal and run the following commands to install the packages.

    >npm install mysql

    >npm install inquirer


1. ## After the required packages are installed, copy everything from the bamazon.sql file, paste it into MySQLWorkbench, and execute the code to create the database.

    You should be able to see the data with all of the products you can order.

    This is what it should look like.

    ![Table1](https://i.ibb.co/KyCt8Xd/initial-table.png)


1. ## Go back into the terminal for bamazoncustomer.js and run the following command to place an order...

    >node bamazoncustomer.js

    Using your ARROW keys and the ENTER keys, select what product you want to purchase.

    Then enter in the number of products you would like to purchase. The table will update accordingly.

    For example, if I bought 10 coffee mugs, the new stock count will be 20. The app will also give you the price of your order.

# Screenshots of results below:
Terminal Responses

![Terminal](https://i.ibb.co/x3psygN/Screen-Shot-2019-11-11-at-10-13-14-AM.png)

Updated Table

![Table2](https://i.ibb.co/zPdvr1D/Screen-Shot-2019-11-11-at-10-40-24-AM.png)

