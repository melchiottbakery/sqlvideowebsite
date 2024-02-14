## Prerequisites

Before getting started, you will need the following:

- MySQL installed on your local machine or a remote server
- MySQL connector for Python (`pymysql`) installed
- Jupyter Notebook (or `Python` terminal) installed
- Put the python file in your Python notebook source folder

## Setup

- Please load the dumped sql file on the MySQL server and keep the server active. 

- open the file with the extension of .ipynb by Jupter, you will see on the top of the file there are several modules to be installed.

    !pip install pymysql

    !pip install pandas
    
    !pip install numpy

    !pip install seaborn

    !pip install matplotlib
    
    !pip install cryptography
- In the [2] of the files, please set your username to `userg` and password to `passg` of MySQL server in order to connect to the database via Python.
- Be sure that in the [2] [5] [12]the variable of `database` is the name of the database that you load in the server.

- Please run the code from here to the bottom with the last block of code that works as a GUI system. Only the last block of code is supposed to be rerun during the whole process, no exceptions.

Make sure you've all the pre-requisite installed, if not, run the first block of code before running any other ones.

## Usage 

After you successfully run all the previous codes, you will be prompted with the following words `If you are a guest, enter 1; If you are a user, enter 2. Else, enter anything else and you will be redirected to login page.` when you run [26] or [*], which means you have successfully run the system.

- To enter 1 will get you access to the guest view. You can get the userId and username of a user for enter 1 - 1 - 8. (! the result of the userId is just to let you pair with the username to get access of its user options successfully, not to prove the program have the possibility of disclosing data information). 

- To enter 2 will lead you to enter the userId, and its username to access the user option ( userId=1 username = johndoe123)

- To enter anything will lead you to enter the username and the password of the database to access the admin option.

- In case of failure or no further input options, rerun the code block below and re-login to the database.

For all functions(options) of the program, please refer to `Activity diagram`

- In some query results, you may see the global `userId`, which is just to let you know the specific userId and username values, so that you can enter correct values among multiple users. This does not mean that the query results of our database are not safe/complete.
