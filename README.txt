**USING PYTHON 3.9.6 IS RECOMMENDED**
**INSTALL JUPYTER NOTEBOOK**
**KINDLY RE-RUN THE ENTIRE NOTEBOOK IF YOU FACE DIFFICULTIES, ALL AT ONCE UNLIKE CELL BY CELL EXECUTION, BECAUSE RUNNING A CELL TWICE AT
SOME POINT OF TIME MAY CAUSE INCONSISTENCIES**
**INSTALL JUPYTER NBCONVERT APP BY EXECUTING "sudo apt install jupyter-nbconvert"**
**BEFORE EXECUTING ANY SHELL SCRIPT, FIRST MAKE IT EXECUTABLE BY COMMAND "chmod +x <file_name>.sh"**
**FOR MORE SPECIFIC INFORMATION OF A QUESTION,PLEASE REFER THE COMMENTS IN 'QUESTION.ipynb' FILE**
**THE PATTERN OF IPYNB FILES FOR EVERY QUESTION GOES LIKE 'Q1.ipynb','Q2.ipynb' ... 'Q9.ipynb'** 

REQUIREMENTS:
You are requested to install below packages before executing scripts
	1.numpy
	2.pandas
	3.scipy
ASSUMPTIONS:
	*No Dependencies exist for any of the questions(except for question 4), you can run anything anytime independently.
	People speaking exactly ONE language = (Total Population) - (People speaking TWO or more languages)
	People speaking exactly TWO languages = (People speaking TWO or more languages) - (People speaking THREE or more languages)
	People speaking three or more languages is IMPLICIT.
	For age-groups: Not considering Literate as a whole, a group.
	Adding people without education level but literate into literate but below primary.
	'Literate but below primary' = 'Literate but below primary'+'Literate without education level'
	and adding all below graduate things into Matric/Secondary but below graduate.
	'Matric/Secondary but below graduate' = 'Matric/Secondary but below graduate'+'Higher_secondary'+'Non_technical_diploma'+'Technical_diploma'
	
QUESTION 1:
	'percent-india.sh' invokes question 1.
	Required Input files: 'DDW-C18-0000.xlsx','DDW_PCA0000_2011_Indiastatedist.csv'
	After  merging the dataframe with population dataframe we calculate the required columns as per assumptions, for exactly   one,two,three     or  more
	Now, we divide all the columns with their respective population and multiply with 100 to get percentage.
	Output files: 'percent-india.csv'
	
QUESTION 2:
	'gender-india.sh' invokes question 2.
	Required Input files: 'DDW-C18-0000.xlsx','DDW_PCA0000_2011_Indiastatedist.csv'
	Similar to above question i.e.Q1 is done here, but for male and female population instead of total population.
	Now, we divide all the columns with their respective male or female population and multiply with 100 to get percentage.
	we have male,female percentages of exactly one, exactly two and three or more languages.
	our null hypothesis is there is no difference between the male and female percentages
	now we perform z score calculation for each of the states
	next we convert these z scores into p values
	Output files: 'gender-india-a.csv','gender-india-b.csv','gender-india-c.csv'
	Here, 'a' represents exactly one language data
		  'b' represents exactly two languages data
		  'c' represents three or more languages data

QUESTION 3:
	'geography-india.sh' invokes question 3.		  
	Required Input files: 'DDW-C18-0000.xlsx','DDW_PCA0000_2011_Indiastatedist.csv'	  
	we take similar approach as Q2 but with urban and rural constraints.
	Merging C-18 dataframe with population dataframe.
	Now, we divide all the columns with their respective urban or rural population and multiply with 100 to get percentage.
	we have urban,rural percentages of exactly one, exactly two and three or more languages.
	our null hypothesis is there is no difference between the urban and rural percentages
	now we perform z score calculation for each of the states
	next we convert these z scores into p values
	Output files: 'geography-india-a.csv','geography-india-b.csv','geography-india-c.csv'
	Here, 'a' represents exactly one language data
		  'b' represents exactly two languages data
		  'c' represents three or more languages data
		  
QUESTION 4:
	the input to this question is the output of the first question
	'3-to-2-ratio.sh' invokes question 4a ,'2-to-1-ratio.sh' invokes question 4b.
	Required Input files: 'percent-india.csv'
	we have people speaking exactly one, exactly two and three or more languages from input file.
	To calculate 3 to 2 ratio, we divide people speaking 3 or more languages / people speaking exactly two languages
	To calculate 2 to 1 ratio, we divide people speaking exactly two languages / people speaking exactly 1 language
	we now sort accordingly to extract worst 3 states and top 3 states respectively.
	Output files: '3-to-2-ratio.csv','2-to-1-ratio.csv'

QUESTION 5:
	'age-india.sh' invokes question 5.
	Required Input files: 'DDW-C18-0000.xlsx','DDW-0000C-14.xls'
	The age intervals of C-14 are adjusted to match C18 ones, and ignore remaining unwanted age intervals.
	Then, we merge both the dataframes and calculate percentages for people speaking three or more languages.
	calculate maximum of such percentage for a state and output respective age group for that state.
	Output files: 'age-india.csv'
	
QUESTION 6:
	'literacy-india.sh' invokes question 6.	
	Required Input files: 'DDW-C19-0000.xlsx','DDW-0000C-08.xlsx'
	The literacy groups in C-08 are modified accordingly as mentioned in assumptions for age-groups.
	Merging both dataframes on state code and literacy group and calculate percentages for people speaking three or more languages.
	calculate maximum of such percentage for a state and output respective literacy group for that state.
	Output files: 'literacy-india.csv'

QUESTION 7:
	'region-india.sh' invokes question 7.	
	Required Input files: All files of C-17. 
	For every input file there are three partitions: 'Total speakers of languages','Number of speakers speaking subsidiary languages(1st         language)', 'Number of speakers speaking subsidiary languages(2nd language)' 
	To calculate for mother tongue we take only one column i.e, 'Total speakers of languages' --For 'a' part
	For 'b' part: we take all three columns into consideration.
	we construct dictionary with language names as keys and no of people speaking that lang as values.
	According to the region norms,we add all the states dict into a region dictionary
	Finally, we calculate top three most spoken languages of that region by sorting it out in descending order of values in dictionary.
	Output files: 'region-india-a.csv','region-india-b.csv'

QUESTION 8:
	'age-gender.sh' invokes question 8.
	Required Input files: 'DDW-C18-0000.xlsx','DDW-0000C-14.xls'
	The age intervals of C-14 are adjusted to match C18 ones, and ignore remaining unwanted age intervals.
	Then, we merge both the dataframes based on state-code and age-group.
	we now extract maximum ratio for males and females in different age groups speaking exactly one language,exactly two languages, 3 or         more languages.
	Output files: 'age-gender-a.csv','age-gender-b.csv','age-gender-c.csv'
	Here, 'a' represents three or more languages data	
		  'b' represents exactly two languages data
		  'c' represents exactly one language data

QUESTION 9:
	'literacy-gender.sh' invokes question 9.	
	Required Input files: 'DDW-C19-0000.xlsx','DDW-0000C-08.xlsx'
	The literacy groups in C-08 are modified accordingly as mentioned in assumptions for age-groups.
	Merging both dataframes on state code and literacy group.
	next we calculate percentages for males and females speaking three or more languages,exactly 2, exactly 1 language.
	we now extract maximum ratio for males and females in different literacy groups speaking exactly one language,exactly two languages, 3 a     or more languages.
	Output files: 'literacy-gender-a.csv','literacy-gender-b.csv','literacy-gender-c.csv'
	Here, 'a' represents three or more languages data	
		  'b' represents exactly two languages data
		  'c' represents exactly one language data	
	
QUESTION 10:	
	README itself...
	
**** THE END ****	