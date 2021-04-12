# Pewlett-Hackard-Analysis
## Analysis Overview
The purpose of our analysis is to use a set of databases containing various information about employees to determine the eligibility for retirement for a large printing company. In order to do so, we will use structured query language (sql) to relate the various parameters in each database into a coherent structure which can be used to make informed decisions based on the retirement eligibility (among other things) of employees. Firstly, we want to know how many employees may be eligible for retirement, as hiring and financial decision-making will need to be informed by this parameter. Other than the number of employees eligible for retirement, we would also like to know which current employees are eligible for a possible mentorship program.
## Results
In our analysis we first created a table holding the titles of all employees which were born between 1952 and 1955 (the age in which they would be eligible for retirement (shown below in Figure 1). From this information, we are able to make a table of the number of employees eligible for retirement by title (Figure 2). 

![alt text](https://github.com/aamotz001/Pewlett-Hackard-Analysis/blob/main/Figures/unique_titles.png)

__Figure 1: Eligible Employees by Title__

![alt text](https://github.com/aamotz001/Pewlett-Hackard-Analysis/blob/main/Figures/retiring_titles.png)

__Figure 2: Eligible Employees Count Title__

In the next phase of our analysis, we want to make a table which will hold the names and information of employees who may be eligible for a mentorship program. The results are shown below in Figure 3.

![alt text](https://github.com/aamotz001/Pewlett-Hackard-Analysis/blob/main/Figures/mentorship_eligibility.png)

__Figure 3: Eligible Mentors__

From inspection of the information in the above figures, we can draw the following conclusions: 

- The majority of the employees eligible for retirement, by far, are senior engineers. This is likely because it takes a long time within the company to gain this title.
- The senior engineer title seems to be the one with the best employee investment (as in, they tend to stay in the company the longest). This reflects well on the company culture for this particular role
- The least amount of employees eligible for retirement are managers, which is strange as like the senior engineer, one would expect that a managerial role would take some time to get to. Perhaps manager positions are not comfortable or as worthwhile as they need to be in order to retain employees in this title. 
- The mentorship eligibility analysis shows that like the retirement eligibility, senior engineers seem to be the most frequent title. Again this is logical for the same reasons as listed in the first bullet point. 
## Summary
In summary, somewhere upwards of 40K jobs (roughly thirteen percent!) will be needed to be filled in order to account for the gap of the "Silver tsunami." Concerningly, many of these roles are senior level positions. If this is not addressed, the company will likely suffer from a loss of continuity between the knowledge of these higher level employees and the next generation of employees. As further analysis, we have counted the number of employees eligible for the mentorship program, similar to Figure two, to show how well matched the retiring, and possible mentor titles are matched. This is shown below in Figure 4. Comparison between Figure 2 and 4 shows that there are no where near the number of qualified, retirement-ready employees to mentor the next generation of employees, which is a bit disturbing.

![alt text](https://github.com/aamotz001/Pewlett-Hackard-Analysis/blob/main/Figures/mentee_count.png)

__Figure 4: Eligible Mentees Count Title__

Finally, we perform one last database query to look at the department in which we would expect to loose the most employees according to the table in Figure 2. We can guess that senior engineers will likely work in the Research department, so it is of use to create a table looking at the employees within this department as a starting point to consider possible mentors outside of the original bounds of the query which produced the table in Figure 3.


![alt text](https://github.com/aamotz001/Pewlett-Hackard-Analysis/blob/main/Figures/Research_dept.png)

__Figure 5: Eligible Mentees Count Title__
