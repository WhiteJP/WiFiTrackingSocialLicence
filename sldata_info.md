# Data information

`sldata.csv` contains the data underlying the paper, 'Paths to social licence for the use of Wi-Fi tracking analytics in university research and services'. 

For more information on the data and the experimental paradigm leading to its collection please see 'Paths to social licence for the use of Wi-Fi tracking analytics in university research and services'.

## Variables

`ResponseID` -- random ID generated for each participant. 

`scenario` -- The scenario presented to the participant. Note, each particpant was shown three scenarios. Coded as follows:

  1. 'Work Records'
  2. 'Memory for Where'
  3. 'Serving you Better'
  4. 'Safe Campus'
  5. 'Student Well-being Project'
  6. 'Project Move'
  7. 'Project TRIIBE'
  8. 'Project QueueSense'
  9. 'Project Fluloc'
  10. 'Project Precinct Change Management'
  11. 'Academic Performance'

`scenario_check` -- Participant response to attention / comprehension check question. Answer coded to  correspond to the scenario to which it relates. For participants to pass the attention check the value in `scenario` and `scenario_check` must be the same for each of their 3 scenarios. 

`decline_difficulty` --	"How easy is it for people to decline participation in the proposed research?" 
<br> Responses: 0 = ‘Extremely easy’ to 5 = ‘Extremely difficult’.

`private_benefit` -- "How much would private entities benefit from the proposed research?"
<br> Responses: 0 = ‘Not at all’, 5 = ‘Extremely’.

`participant_benefit` -- "How much would participants (i.e., the people whose data is being collected) benefit from the proposed research?"	0 = ‘Not at all’, 5 = ‘Extremely’.

`public_benefit` --	"How much would the public benefit from the proposed research?"	
<br> Responses: 0 = ‘Not at all’, 5 = ‘Extremely’.

`disproportionality` --	To what extent are the researchers only collecting the data necessary to achieve the purposes of the proposed research?
<br> Responses: 0 = ‘Researchers collecting only necessary data’, 5 = ‘Researchers collecting vast amounts of unnecessary data’.

`sensitivity` -- "How sensitive is the data to be collected by the proposed research?" 
<br> Responses: 0 = ‘Not at all sensitive’, 5 = ‘Very sensitive’.

`risk_of_harm` -- "How serious is the risk of harm that could arise from the proposed research?" 
<br> Responses: 0 = ‘Extremely low risk of harm’, 5 = ‘Extremely high risk of harm’.

`trust` -- "How much do you trust the sponsor of the proposed research?"	<br> Responses: 0 = ‘Not at all’, 5 = ‘Extremely’.

`security` --	"How secure is the data that would be collected from the proposed research?"	<br> Responses: 0 = ‘Not at all secure’, 5 = ‘Extremely secure’.

`ongoing_control` -- "To what extent do participants have ongoing control of their data? This includes controlling how and when data is collected, and having access to view and delete data after it is collected." 
<br> Responses: 0 = ‘No control at all’, 5 = ‘Complete Control’.

`respect_for_privacy` -- "To what extent do you believe the proposed research respects participants' privacy?" 
<br> Responses: 0 = ‘Not at all’, 5 = ‘Extremely’.

`is_acceptable` –- "In your opinion, is the use of university data in each scenario acceptable?” <br> Responses: 0 = ‘No’, 1 = ‘Yes’.

`age` –- Self-reported age in years.

`gender` –- Self-reported gender. Coded as: 

1. 'Male'
2. 'Female'
3. 'Other'
4. 'Prefer not to say'.

`rel_to_unimelb` –- 'What is your relationship to the University of Melbourne?' Coded as:

1. 'Undergraduate student'
2. 'Postgraduate student'
3. 'Academic employee of UniMelb'
4. 'Non-academic employee of UniMelb'
5. 'Employee of other entity, but work on campus'
6. 'Other'

`education` -- 'What is the highest level of education that you have completed?' Coded as:

1. 'Some High School'
2. 'Completed High School'
3. 'Some Trade/Professional School (e.g., TAFE)'
4. 'Completed Trade/Professional School (e.g., TAFE)'
5. 'Some Undergraduate University/College'
6. 'Completed Undergraduate University/College'
7. 'Some Postgraduate University/College'
8. 'Completed postgraduate University/College'
9. 'Some Doctoral studies'
10. 'Completed Doctoral studies'

## Other information

Missing data coded as `NA`

