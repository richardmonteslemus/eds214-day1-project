# Self Assessment for EDS 214 Final Project

## Automate 
#### **Running the entire analysis requires rendering one Quarto document**
Meets spec: With rendering one quarto document, my analysis pulls the data correctly, wrangles it, uses the function it needs to calculate the moving mean, and then plots it. 

#### The analysis runs without errors
Meets spec: I have been able to run the analysis without any errors 

#### **The analysis produces the expected output**
Not yet: Currently the analysis only produces the line graph for a single chemical concentration at a single site across time. I still need to produce the plot and complete the analysis for the rest of the chemicals and sites. 

#### **Data import/cleaning is handled in its own script(s)**
Not yet: I currently have my the data cleaning and importing on the same quarto document as my analysis.

## Organize
#### Raw data is contained in its own folder
Meets spec: Raw data is stored in a folder called "data".

#### Intermediate outputs are created and saved to a separate folder from raw data
Not yet: Intermediate outputs currently are not saved anywhere. They are just placed into the environment after I assign a variable to them. 

#### **At least one piece of functionality has been refactored into a function in its own file**
Meets Spec: I originally tried to calculate the moving average by calculating days since the the first sample was taken for every data point, creating a column for it, then using mean to calculate the the moving average for a 9 week window (63 days) for every data point shown in this [commit](https://github.com/richardmonteslemus/eds214-day1-project/commit/a66958518f54433338d5fdef7089733fd10fb41f). 

After, a moving average demo in class I refactored that process into a function that calculates a moving mean for every data point, seen in this [commit](https://github.com/richardmonteslemus/eds214-day1-project/commit/31b0df9aa0bc944547f9355a1f39371026b1042b), and created its own function file seen in this  [commit](https://github.com/richardmonteslemus/eds214-day1-project/commit/ec87db40fa34d5250eba772e328d7fd586ed94f2).

## Document
#### The repo has a README that explains where to find (1) data, (2) analysis script, (3) supporting code, and (4) outputs
Not yet: I have not created a README file explaining where to find this code and folders. 

#### **The README includes a flowchart and text explaining how the analysis works**
Not yet: I have not created a flowchart and text explaining how the analysis works. 

#### **The code is appropriately commented**
Not yet: I have comments introducing section of my code, but do not have comments in functions or in-line comments. 

#### **Variable and function names are descriptive and follow a consistent naming convention**
Meets spec: Variables and function name are all in snake_case, concise, and use intuitive naming conventions. 

## Scale
### After cloning the repo on Workbench:

#### Running the environment initialization script installs all required packages
Not yet: I have not cloned the repo onto workbench yet so I do not know if it installs required packages. 

#### The analysis script runs without errors
Meets spec: I have no errors when I run my script. 

