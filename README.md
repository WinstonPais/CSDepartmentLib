# CSDepartmentLib

A website for the Computer Science Department Library of SJEC where students can view the the availability of the books and reserve upto 3 books without confirming the booking. The Student has to collect the book from the Library upon which the booking wil be confired.

## Installation
we recommend using anaconda <br/>
To create a conda environment run the below command
```
conda create --name cslib --file conda-requirements.txt
```
To activate this environment
```
activate cslib
```
for development use the postgres database in the repo. Change other seetings in settings.py respectively. The secret key for development is commented in settings.py <br/>
**Note**
if you have installed a new package run this command to call it to the requirements.txt file
```
conda list -e > conda-requirements.txt
```

## Running the project
To run this Project enter the command
```
python manage.py runserver
```
