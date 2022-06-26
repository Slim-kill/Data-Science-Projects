use "IT Salary Survey EU";

--it_salary_2018
select age, count(age) from it_salary_2018 group by age order by age;

select gender, count(gender) from it_salary_2018 group by gender order by gender;

select city, count(city) from it_salary_2018 group by city order by city;

select position, count(position) from it_salary_2018 group by position order by position;
--'32' to null
--'Android dev', 'Android dev.' to 'Android Developer'
--'Architekt' to 'Architect'
--'Business Analyst/RE' to 'Business Analyst'
--'C#', 'C# dev' to 'C# Developer'
--'.net c# developer', 'C# .net Developer' to '.net, c# developer'
--'DBA' to 'Database Administrator'
--'DB Developer' to 'Database Developer'
--'E.g. C# Developer' to 'C# Developer'
--'Embedded SW Developer' to 'Embedded Software Engineer'
--'Frontend', 'Front End developer', 'FrontEnd dev', 'Frontend Developer', 'Front-end developer ', 'Frontent Developer' to 'Front-End Developer'
--'Full stack', 'Fullstack' to 'Full-stack'
--'Full Stack Developer', 'Full-stack Developer', 'Full-Stack Web Developer', 'fullstack developer' to 'Full-stack Developer'
--'Full stack engineer', 'Fullstack Engineer' to 'Full-stack engineer'
--'iOS Developwr', 'ios вумудщзук' to 'iOS Developer'
-- 'IT Administration' to 'IT Admin'
--'IT специалист' to 'IT Specialist'
--'IT-Consultant' to 'IT Consultant'
--'Java & JS Developer', 'Java/JS Developer' to 'Java/Javascript Developer'
--'Java dev' to 'Java developer'
--'Java Fullstack Developer', 'java fullsteck developer' to 'Java Full-stack Developer'
--'Java script' to 'JavaScript'
--'Java Script developer', 'Javascript Developer in Test to 'JavaScript developer'
--'Machine Learning Engineet' to 'Machine Learning Engineer'
--'ML/Research (30 hours weekly)' to 'ML/Research'
--'PHP Dev' to 'PHP developer'
--'Programmierer/Consultant' to 'Programmer/Consultant'
--'Projectingenieur' to 'Project Engineer'
--'Pyhon developer, 'Python dev' to 'Python developer'
--'QA Ingenieur' to 'QA Engineer'
--'Senior Frontend Developer' to 'Senior Front-end Developer'
--'Senior Full stack developer' to 'Senior Full-stack developer'
--'Senior Fullstack' to 'Senior Full-stack'
--'Senior JS Enigneer' to 'Senior Javascript Engineer'
--'Senior Software Engineer (Data Engineer)' to 'Senior Software Engineer'
--'Senior Software Ingenieur Java' to 'Senior Software Engineer Java'
--'Senior Web Deleloper' to 'Senior Web Developer'
--'Software Architekt' to 'Software Architect'
--'Softwaredeveloper', 'Softwareentwickler' to 'Software Developer'
--'Solution architect' to 'Solutions architect'
--'Sr project manager' to 'Senior Project Manager'
--'Sr. Database Entwickler (Oracle/Java) to 'Senior Database Developer (Oracle/Java)'
--'Sr. Engineer' to 'Senior Engineer'
--'Sr. JS Developer to 'Senior JavaScript Developer'
--'SRE', 'Site Reliability engineer' to 'Site Reliability engineer (SRE)'
--'SSE' to 'Sustainable Software Engineering (SSE)'
--'Sysadmin, 'System Administrator (Windows)', 'Systems Administrator' to 'System administrator'
--'Teamlead' to 'Team Lead'
--'wevdev', 'Web-Entwickler' to 'Web Developer'
--'Werkstudent Testautomatisierung' to 'Working Student test automation'

update it_salary_2018
	set position = trim(position);

update it_salary_2018
	set position = NULL where position = '32';

update it_salary_2018
	set position = 'Android Developer' where position in ('Android dev', 'Android dev.');

update it_salary_2018
	set position = 'Architect' where position = 'Architekt';

update it_salary_2018
	set position = 'Business Analyst' where position = 'Business Analyst/RE';

update it_salary_2018
	set position = 'C# Developer' where position in ('C#', 'C# dev');

update it_salary_2018
	set position = '.net/c# developer' where position in ('.net c# developer', 'C# .net Developer');

update it_salary_2018
	set position = 'Database Administrator' where position = 'DBA';

update it_salary_2018
	set position = 'Database Developer' where position = 'DB Developer';

update it_salary_2018
	set position = 'C# Developer' where position = 'E.g. C# Developer';

update it_salary_2018
	set position = 'Embedded Software Engineer' where position = 'Embedded SW Developer';

update it_salary_2018
	set position = 'Front-End Developer' 
	where position in ('Frontend', 'Front End developer', 'FrontEnd dev', 'Frontend Developer', 'Front-end developer ', 'Frontent Developer');

update it_salary_2018
	set position = 'Full-stack' where position in ('Full stack', 'Fullstack');

update it_salary_2018
	set position = 'Full-stack Developer' 
	where position in ('Full Stack Developer', 'Full-stack Developer', 'Full-Stack Web Developer', 'fullstack developer');

update it_salary_2018
	set position = 'Full-stack engineer' where position in ('Full stack engineer', 'Fullstack Engineer');

update it_salary_2018
	set position = 'iOS Developer' where position in ('iOS Developwr', 'ios вумудщзук');

select * from it_salary_2018 where position like 'ios%';
update it_salary_2018
	set position = 'iOS Developer' where timestamp = '2018-12-17 18:35:33.0000000';

update it_salary_2018
	set position = 'IT Admin' where position = 'IT Administration';

select * from it_salary_2018 where position like 'IT%' order by position;
update it_salary_2018
	set position = 'IT Specialist' where Timestamp = '2018-12-31 07:45:22.0000000';

update it_salary_2018
	set position = 'IT Consultant' where position = 'IT-Consultant';

update it_salary_2018
	set position = 'Java/Javascript Developer' where position in ('Java & JS Developer', 'Java/JS Developer');

update it_salary_2018
	set position = 'Java developer' where position = 'Java dev';

update it_salary_2018
	set position = 'Java Full-stack Developer' where position in ('Java Fullstack Developer', 'java fullsteck developer');

update it_salary_2018
	set position = 'JavaScript' where position = 'Java script';

update it_salary_2018
	set position = 'JavaScript developer' where position in ('Java Script developer', 'Javascript Developer in Test');

update it_salary_2018
	set position = 'Machine Learning Engineer' where position = 'Machine Learning Engineet';

update it_salary_2018
	set position = 'ML/Research' where position = 'ML/Research (30 hours weekly)';

update it_salary_2018
	set position = 'PHP developer' where position = 'PHP Dev';

update it_salary_2018
	set position = 'Programmer/Consultant' where position = 'Programmierer/Consultant';

update it_salary_2018
	set position = 'Project Engineer' where position = 'Projectingenieur';

update it_salary_2018
	set position = 'Python developer' where position in ('Pyhon developer', 'Python dev');

update it_salary_2018
	set position = 'QA Engineer' where position = 'QA Ingenieur';

update it_salary_2018
	set position = 'Senior Front-end Developer' where position = 'Senior Frontend Developer';

update it_salary_2018
	set position = 'Senior Full-stack developer' where position = 'Senior Full stack developer';

update it_salary_2018
	set position = 'Senior Full-stack' where position = 'Senior Fullstack';

update it_salary_2018
	set position = 'Senior Javascript Engineer' where position = 'Senior JS Enigneer';

update it_salary_2018
	set position = 'Senior Software Engineer' where position = 'Senior Software Engineer (Data Engineer)';

update it_salary_2018
	set position = 'Senior Software Engineer Java' where position = 'Senior Software Ingenieur Java';

update it_salary_2018
	set position = 'Senior Web Developer' where position = 'Senior Web Deleloper';

update it_salary_2018
	set position = 'Software Architect' where position = 'Software Architekt';

update it_salary_2018
	set position = 'Software Developer' where position in ('Softwaredeveloper', 'Softwareentwickler');

update it_salary_2018
	set position = 'Solutions architect' where position = 'Solution architect';

update it_salary_2018
	set position = 'Senior Project Manager' where position = 'Sr project manager';

update it_salary_2018
	set position = 'Senior Database Developer (Oracle/Java)' where position = 'Sr. Database Entwickler (Oracle/Java)';

update it_salary_2018
	set position = 'Senior Engineer' where position = 'Sr. Engineer';

update it_salary_2018
	set position = 'Senior JavaScript Developer' where position = 'Sr. JS Developer';

update it_salary_2018
	set position = 'Site Reliability engineer (SRE)' where position in ('SRE', 'Site Reliability engineer');

update it_salary_2018
	set position = 'Sustainable Software Engineering (SSE)' where position = 'SSE';

update it_salary_2018
	set position = 'System administrator' where position in ('Sysadmin', 'System Administrator (Windows)', 'Systems Administrator');

update it_salary_2018
	set position = 'Team Lead' where position = 'Teamlead';

update it_salary_2018
	set position = 'Web Developer' where position in ('wevdev', 'Web-Entwickler');

update it_salary_2018
	set position = 'Working Student test automation' where position = 'Werkstudent Testautomatisierung';

--years_of_experience
select years_of_experience, count(years_of_experience) from it_salary_2018 group by Years_of_experience;

--Seniority_level
select distinct seniority_level from it_salary_2018 order by seniority_level;

--gross_income_cur_year
select distinct gross_income_cur_year from it_salary_2018 order by gross_income_cur_year;

--salary_prev_year
select distinct salary_prev_year from it_salary_2018 order by salary_prev_year;

--salary_penul_year
select distinct salary_penul_year from it_salary_2018 order by salary_penul_year;

--stock_option
select distinct stock_option from it_salary_2018 order by stock_option;

--language
select distinct language from it_salary_2018 order by language;
--'Deutsch/Englisch' to 'English, German'
--'Team - Russian; Cross-team - English;' to 'English, Russian'
--'Deutsch' to 'German'

update it_salary_2018
	set language = 'English, German' where language = 'Deutsch/Englisch';

update it_salary_2018
	set language = 'English, Russian' where language = 'Team - Russian; Cross-team - English;';

update it_salary_2018
	set language = 'German' where language = 'Deutsch';

--company_size
select company_size, count(company_size) from it_salary_2018 group by company_size;

--company_type
select company_type, count(company_type) from it_salary_2018 group by company_type;
--'Consult', 'Consultancy', 'Consulting (banking)', 'Consulting Company' to 'Consulting'
--'Ecom retailer', 'Ecommerce', 'E-Commerce firm' to 'E-Commerce'
--'Internal development for a non-IT company' to 'Internal Development'
--'IT Consultancy ', 'IT Consultants', 'IT-Beratung' to 'IT Consulting'
--'IT Dienstleistungen ' to 'IT Service Provider'
--'non-IT, manufacturing' to 'Manufacturing'
--'Outsorce', 'Outsource' to 'Outsourcing'
--'Personaldienstleister' to 'Recruitment'

update it_salary_2018
	set company_type = 'Consulting' where company_type in ('Consult', 'Consultancy', 'Consulting (banking)', 'Consulting Company');

update it_salary_2018
	set company_type = 'E-Commerce' where company_type in ('Ecom retailer', 'Ecommerce', 'E-Commerce firm');

update it_salary_2018
	set company_type = 'Internal Development' where company_type = 'Internal development for a non-IT company';

update it_salary_2018
	set company_type = 'IT Consulting' where company_type in ('IT Consultancy ', 'IT Consultants', 'IT-Beratung');

update it_salary_2018
	set company_type = 'IT Service Provider' where company_type = 'IT Dienstleistungen ';

update it_salary_2018
	set company_type = 'Manufacturing' where company_type = 'non-IT, manufacturing';

update it_salary_2018
	set company_type = 'Outsourcing' where company_type in ('Outsorce', 'Outsource');

update it_salary_2018
	set company_type = 'Recruitment' where company_type = 'Personaldienstleister';


--it_salary_2019
select * from it_salary_2019;

--age
select distinct age from it_salary_2019 order by age;

--gender
select distinct gender from it_salary_2019 order by gender;
--Streamlining gender variables
update it_salary_2019
	set Gender = 'M' where Gender = 'Male';

update it_salary_2019
	set Gender = 'F' where Gender = 'Female';

--city
select distinct city from it_salary_2019 order by city;
--'Saint-Petersburg ' to 'Saint Petersburg'
update it_salary_2019
	set city = 'Saint Petersburg' where city = 'Saint-Petersburg ';

--Seniority_level
select seniority_level, count(seniority_level) from it_salary_2019 group by seniority_level order by seniority_level;
--'Lead' to 'Lower Management'
--'Principal', 'Head' to 'Upper Management'
update it_salay_2019
	set seniority_level = 'Lower Management' where seniority_level = 'Lead';

update it_salary_2019
	set senoirity_level = 'Upper Management' where seniority_level in ('Principal', 'Head');

--position
select position, count(*) from it_salary_2019 group by position order by position;
--'Fullstack Developer' to 'Full-Stack Developer'
update it_salary_2019
	set position = 'Full-Stack Developer' where position = 'fullstack Developer';

--programming_language
select distinct programming_language from it_salary_2019 order by programming_language;

--gross_income_cur_year
select distinct gross_income_cur_year from it_salary_2019 order by gross_income_cur_year;

--bonus_cur_year
select distinct bonus_cur_year from it_salary_2019 order by bonus_cur_year;

--stocks_cur_year
select distinct stocks_cur_year from it_salary_2019 order by stocks_cur_year;

--gross_income_prev_year
select distinct gross_income_prev_year from it_salary_2019 order by Gross_income_prev_year;

--bonus_prev_year
select distinct bonus_prev_year from it_salary_2019 order by bonus_prev_year;

--stocks_prev_year
select distinct stocks_prev_year from it_salary_2019 order by stocks_prev_year;

--vacation_days
select distinct vacation_days from it_salary_2019 order by vacation_days;

--WFH_days
select distinct WFH_days from it_salary_2019 order by WFH_days;

--Language
select distinct language from it_salary_2019 order by language;
--'Deutsch' to 'German'
--'English+Deutsch' to 'English, German'
--'Polish+English' to 'English, Polish'
update it_salary_2019
	set language = 'German' where language = 'Deutsch';

update it_salary_2019
	set language = 'English, German' where language = 'English+Deutsch';

update it_salary_2019
	set language = 'English, Polish' where language = 'Polish+English';

--company_name
select distinct company_name from it_salary_2019 order by company_name;
--'1&1 IONOS', '1&1 UNITED INTERNET' to '1&1'
--'Amazin' to 'Amazon'
--'Auto1', 'AUTO1 Group GmbH' to 'AUTO1 Group'
--'Da Vinchi Engineering' to 'Da Vinci Engineering'
--'Digital service for one-man-business craftsmen', 'N/A', 'NA' to NULL
--'Telefónica' to 'Telefonica '
--'Яфдфтвщ' to 'Zalando'
--'СПШ' to 'CGI'
update it_salary_2019
	set company_name = '1&1' where company_name in ('1&1 IONOS', '1&1 UNITED INTERNET');

update it_salary_2019
	set company_name = 'Amazon' where company_name = 'Amazin';

update it_salary_2019
	set company_name = 'AUTO1 Group' where company_name in ('Auto1', 'AUTO1 Group GmbH');

update it_salary_2019
	set company_name = 'Da Vinci Engineering' where company_name = 'Da Vinchi Engineering';

update it_salary_2019
	set company_name = NULL where company_name in ('Digital service for one-man-business craftsmen', 'N/A', 'NA');

update it_salary_2019
	set company_name = 'Telefonica ' where company_name = 'Telefónica';

select * from it_salary_2019 order by company_name desc;--timestamp = '2019-12-02 11:51:31.0000000' where company_name = Яфдфтвщ
update it_salary_2019
	set company_name = 'Zalando' where timestamp = '2019-12-02 11:51:31.0000000';

--timestamp = '2019-12-02 20:23:58.0000000' where company_name = 'СПШ'
update it_salary_2019
	set company_name = 'CGI' where timestamp = '2019-12-02 20:23:58.0000000';

--company_size
select distinct company_size from it_salary_2019 order by company_size;

--company_type
select distinct company_type from it_salary_2019 order by company_type;

--Correcting data types
alter table it_salary_2019 alter column age tinyint;
alter table it_salary_2019 alter column gender nchar(1);

alter table it_salary_2019 alter column seniority_level nchar(50);

select distinct position from it_salary_2019;

alter table it_salary_2019 alter column years_of_experience tinyint;

alter table it_salary_2019 alter column gross_income_cur_year int;
alter table it_salary_2019 alter column bonus_cur_year int;

select distinct yearly_stocks_cur_year from IT_Salary_2019; --contains decimal values
alter table it_salary_2019 alter column stocks_cur_year float;

alter table it_salary_2019 alter column gross_income_prev_year int;
alter table it_salary_2019 alter column bonus_prev_year int;

alter table it_salary_2019 alter column stocks_prev_year float; --containts decimal values

alter table it_salary_2019 alter column vacation_days float; --contains decimal values


--cleaning it_salary_2020
select * from it_salary_2020;

--age
select distinct age from it_salary_2020;
--correcting age datatype
alter table it_salary_2020 alter column age tinyint;

--gender
select distinct gender from it_salary_2020; --"Diverse" category is a new category, now referred to as D

update it_salary_2020 
	set gender = 'F' where gender = 'Female';

update it_salary_2020 
	set gender = 'M' where gender = 'Male';

update it_salary_2020 
	set gender = 'D' where gender = 'Diverse';

select distinct city from IT_salary_2020; --some outliers (City in Russia, Fr, 'NJ, USA', 'Prefer not to say);

update it_salary_2020
	set city = 'Warsaw' where city = 'Warsaw, Poland';

update it_salary_2020
	set city = 'Zürich' where city = 'Zurich';
	
update it_salary_2020
	set city = NULL where city = 'Prefer not to say';

update it_salary_2020
	set city = 'France' where city = 'Fr';

select distinct position from it_salary_2020;
select distinct years_of_experience from it_salary_2020;

--Seniority_level
select distinct seniority_level from it_salary_2020;

update it_salary_2020
	set seniority_level = 'C-level' where seniority_level = 'CTO' OR seniority_level = 'C-level executive manager';

update it_salary_2020
	set seniority_level = 'No level' where seniority_level = 'no idea, there are no ranges in the firm';

update it_salary_2020
	set seniority_level = 'Upper Management' 
		where  seniority_level in ('Director', 'Principal', 'Head', 'C-level', 'VP');
	
update it_salary_2020
	set seniority_level  'Lower Management' 
		where seniority_level in ('Lead', 'Manager', 'Work Center Manager');

update it_salary_2020	
	set seniority_level = 'Junior' where
		seniority_level = 'Entry level';

update it_salary_2020
	set seniority_level = 'Student' where
		seniority_level = 'Working Student';


--years_of_experience
select years_of_experience, count(years_of_experience) from it_salary_2020 group by years_of_experience order by years_of_experience;

update it_salary_2020
	set years_of_experience = 11 where
		years_of_experience = '1 (as QA Engineer) / 11 in total';

update it_salary_2020
	set years_of_experience = 15 where
		years_of_experience = '15, thereof 8 as CTO';

update it_salary_2020
	set years_of_experience = 6 where
		years_of_experience = '6 (not as a data scientist, but as a lab scientist)';

update it_salary_2020
	set years_of_experience = 1 where
		years_of_experience = 'less than year';


--converting years_of_experience into float
update it_salary_2020
	set years_of_experience = replace(years_of_experience, ',','');

alter table it_salary_2020 alter column years_of_experience float;


--Programming_language
select distinct programming_language from it_salary_2020;
--'-', '--' instead of NULL
--multiple spelling errors
--wrong entry (Job Position entered instead)

update it_salary_2020
	set programming_language = NULL 
		where programming_language in ('-', '--', 'Business Development Manager Operation ', 'Computer Networking,  Network Security ', 'consumer analysis', 
		'DC Management', 'DevOps', 'DWH', 'DevOps', 'Frontend', 'GCP', 'Google Cloud Platform', 'Hardware', 'Management', 'n/a', 'none', 'nothing', 'several',
		'none', 'Test Management', 'Офмф');

update it_salary_2020
	set programming_language = 'Jira' where
		programming_language = 'Atlassian JIRA';

update it_salary_2020
	set programming_language = 'React.js, Node.js' where
		programming_language = 'Frontend: react, node.js'

update it_salary_2020
	set programming_language = 'JavaScript' 
		where programming_language in ('JavScript', 'JS');

--converting all characters in uppercase
update it_salary_2020
	set programming_language = upper(replace(trim(programming_language), '/', ', '));

update it_salary_2020
	set Programming_language_second = upper(replace(trim(Programming_language_second), '/', ', '));

--extracting all primary programming language
select distinct trim(value), count(trim(value)) Primary_Prog_lang from it_salary_2020
	cross apply 
		string_split(replace(programming_language_second, '/', ','), ',') group by trim(value) order by count(trim(value)) desc;


--extracting all secondary programming language
select trim(value), count(trim(value)) Secondary_prog_lang from it_salary_2020
	cross apply
		string_split(replace(programming_language_second, '/', ','), ',')  group by trim(value) order by count(trim(value)) desc;

--gross_income_cur_year
select * from it_salary_2020 order by gross_income_cur_year desc;;
--outlier values such as '99999999999' and '500000000'
update it_salary_2020
	set Gross_income_cur_year = NULL where Gross_income_cur_year in ('99999999999', '500000000')

select * from it_salary_2020 order by Bonus_cur_year desc; --characters instead of NUL

--Changing to null, to convert column to appropriate data type
update it_salary_2020
	set Bonus_cur_year = NULL
		where Bonus_cur_year in ('Not sure', 'Na', 'depends', 'bvg only');

update it_salary_2020
	set Bonus_cur_year = 15000 
		where Bonus_cur_year = '15000+-';

--Checking for more inappropriate values
select isnumeric(bonus_cur_year), bonus_cur_year from it_salary_2020 group by bonus_cur_year order by isnumeric(bonus_cur_year), bonus_cur_year;

--one row has '-' as bonus value
update it_salary_2020
	set bonus_cur_year = NULL
	where bonus_cur_year = '-';

alter table it_salary_2020 alter column bonus_cur_year float;

--converting bonus_cur_year to float
select cast(bonus_cur_year as float) from it_salary_2020;

select 
	case when isnumeric(bonus_cur_year) = 1 then
		cast(replace(bonus_cur_year, ',', '') as float)
			else null
		end bonus_cur_year
from it_salary_2020;

--gross_income_prev_year
select distinct gross_income_prev_year from it_salary_2020 order by gross_income_prev_year desc;

--bonus_prev_year
select bonus_prev_year, count(bonus_prev_year) from it_salary_2020 group by bonus_prev_year order by bonus_prev_year desc; --inappropriate value '-' and 'learning budget, bvg, gym, food'

--removing inappropriate values
update it_salary_2020
	set bonus_prev_year = NULL 
		where bonus_prev_year in ('learning budget, bvg, gym, food', '-');

alter table it_salary_2020 alter column bonus_prev_year float;

--vacation_days
select vacation_days, count(vacation_days) from it_salary_2020 group by vacation_days order by vacation_days desc;
--unlimited vacation days will be denoted by '365'
--inappropriate texts in some rows
--'23+' and '~25' = 25'
--'24 labour days' = 24
--'(no idea)' to NULL

update it_salary_2020
	set vacation_days = 365 
		where vacation_days in ('unlimited', '30 in contract (but theoretically unlimited)');

update it_salary_2020
	set vacation_days = 25 
		where vacation_days in ('~25', '23+');

update it_salary_2020
	set vacation_days = 24 
		where vacation_days = '24 labour days';

update it_salary_2020
	set vacation_days = NULL 
		where vacation_days = '(no idea)';

alter table it_salary_2020 alter column vacation_days float;

--employment_status
select employment_status, count(employment_status) from it_salary_2020 group by employment_status order by employment_status;
--unnecessary text present
--All values will be converted to 'full-time', 'part-time', 'student', 'freelance'

update it_salary_2020 
	set employment_status = 'full-time' 
		where employment_status is 
			('Full-time position, part-time position, & self-employed (freelancing, tutoring)', 'full-time, but 32 hours per week (it was my request, I''m a student)',
			'Full-time employee', 'Founder', 'Company Director')

update it_salary_2020
	set employment_status = 'part-time' where
		employment_status = 'Part-time employee';

update it_salary_2020
	set employment_status = 'student' where
		employment_status in ('working student', 'Werkstudent')
		
update it_salary_2020
	set employment_status = 'freelance' where
		employment_status = 'Self-employed (freelancer)';

--converting employment_status to nchar(20)
alter table it_salary_2020 alter column employment_status nchar(20);

--contract duration
select contract_duration, count(contract_duration) from it_salary_2020 group by contract_duration order by contract_duration;
--invalid '0' value
select * from it_salary_2020 where contract_duration = '0';
--The person is a freelance worker, so the contract_duration should be temporary contract
update it_salary_2020
	set contract_duration = 'Temporary contract'
		where contract_duration = '0';

--Language
select * from it_salary_2020 order by language;
select language, count(language) from it_salary_2020 group by language order by language;
--'Русский' = Russian (where timestamp = '2020-12-03 21:59:27.0000000' and '2020-11-24 20:23:56.0000000')
--'both'
--Deuglisch
--50/50``

update it_salary_2020
	set language = 'Russian'
		where timestamp in ('2020-12-03 21:59:27.0000000', '2020-11-24 20:23:56.0000000')

select * from it_salary_2020 where language in ('Deuglisch', '50/50', 'both'); 
--Cologne, Karlsruhe and Berlin are German cities  'both', 'Deuglisch', '50/50' refers to German and English
--For rows with multiple languages, the seperators will be changed to ',' and alphabetical order for consistency

update it_salary_2020
	set language = 'English, German'
		where language in ('both', 'Deuglisch', '50/50', 'English and German');

update it_salary_2020
	set language = 'English, Russian'
		where language = 'Russian, English';

--company_size
select company_size, count(company_size) from IT_salary_2020 group by company_size order by company_size;
--changing data type to nchar(15)
alter table it_salary_2020 alter column company_size nchar(15);


--company_type
select company_type, count(company_type) from IT_salary_2020 group by company_type order by company_type;
--Changing data type to nvarchar(50)
--'Full-time position in Education, part-time position in at a data startup' changed to 'Education'
--'Ecommerce' to 'E-commerce'
--'Financial' to 'Finance'
--'Bloody enterprise' to 'Enterprise'
--'IT Department of established business' to 'IT'
--'Outsourse' and 'Outsorce to 'Outsource'
--'Research institute' to 'Research'
--'Science institute' to 'Science'

update it_salary_2020
	set company_type = 'Education'
		where company_type = 'Full-time position in Education, part-time position in at a data startup';

update it_salary_2020
	set company_type = 'E-commerce' where company_type = 'Ecommerce';

update it_salary_2020
	set company_type = 'Finance' where company_type = 'Financial';

update it_salary_2020
	set company_type = 'Enterprise' where company_type = 'Bloody enterprise';

update it_salary_2020 
	set company_type = 'IT' where company_type = 'IT Department of established business';

update it_salary_2020
	set company_type = 'Outsource' where company_type in ('Outsourse', 'Outsorce');

update it_salary_2020
	set company_type = 'Research' where company_type = 'Research institute';

update it_salary_2020
	set company_type = 'Science' where company_type = 'Science Institute';

alter table it_salary_2020 alter column company_type nvarchar(50);

--coronavirus_job_loss
select coronavirus_job_loss, count(coronavirus_job_loss) from it_salary_2020 group by coronavirus_job_loss order by Coronavirus_job_loss;
--Changing datatype to nchar(10)
--Irrelevant information present
--'Have been a freelancer at the beginning of year', 'kurzarbeitzeit for 1.5 months', 'Laid off for a bit', 'yes but found a new one with better pay / perks' to 'Yes'
--'i didn't but will be looking for new one because of covid', 'Leads and project inquiries have slowed down', 'Lost the job but for different reason', 'No, but there was a salary cut at 10% for 3 months and then at 5% for further 3 months' to 'No'

update it_salary_2020
	set Coronavirus_job_loss = 'Yes'
		where Coronavirus_job_loss in ('Have been a freelancer at the beginning of year', 'kurzarbeitzeit for 1.5 months', 'Laid off for a bit', 'yes but found a new one with better pay / perks');

update it_salary_2020
	set Coronavirus_job_loss = 'No'
		where Coronavirus_job_loss in ('i didn''t but will be looking for new one because of covid', 'Leads and project inquiries have slowed down', 'Lost the job but for different reason', 'No, but there was a salary cut at 10% for 3 months and then at 5% for further 3 months');

alter table it_salary_2020 alter column coronavirus_job_loss nchar(10);

--Short_time_work_scheme
select short_time_work_scheme_weekly, count(short_time_work_scheme_weekly) from it_salary_2020 group by short_time_work_scheme_weekly order by short_time_work_scheme_weekly;
--change datatype to float
alter table it_salary_2020 alter column short_time_work_scheme_weekly float;

--Monetary_support_employer
select monetary_support_employer, count(monetary_support_employer) from it_salary_2020 group by monetary_support_employer order by monetary_support_employer;
--two results have a monthly value, they will be omitted
--Another column with 'yes' and 'no' values only will be created

Create view IT_survey_2018_2020 as
(
	select
		timestamp,
		age,
		gender,
		city,
		position,
		years_of_experience,
		seniority_level,
		gross_income_cur_year,
		language,
		company_size,
		company_type
	from IT_Salary_2018
	union
	(select 
		timestamp,
		age,
		gender,
		city,
		position,
		years_of_experience,
		seniority_level,
		gross_income_cur_year,
		language,
		company_size,
		company_type
	from IT_Salary_2019)
	union
	(select 
		timestamp,
		age,
		gender,
		city,
		position,
		years_of_experience,
		seniority_level,
		gross_income_cur_year,
		language,
		company_size,
		company_type
	from IT_Salary_2020)
);

create view IT_survey_2018_2020_clean as
(
select * from IT_survey_2018_2020 where
	    timestamp is not null and
		age is not null and
		gender is not null and
		city is not null and
		position is not null and
		years_of_experience is not null and
		seniority_level is not null and
		gross_income_cur_year is not null and
		language is not null and
		company_size is not null and
		company_type is not null
);

select * from IT_survey_2018_2020_clean;
select distinct language from IT_survey_2018_2020_clean;

select distinct company_size from IT_survey_2018_2020_clean;
--Questions to answer
--Q1 Income per year of experience
--Q2 Relationship between years of experience and income
--Q3 Does gender affect the income at each seniority level?
--Q4 Does gender affect income based on position (for positions with >20 values)?
--Q5 Income based on company size at each level
--Q6 Average age at each level

--extracting programming languages from it_salary_2020 table
select distinct trim(value) Primary_Prog_lang, count(trim(value)) Users from it_salary_2020
	cross apply 
		string_split(replace(programming_language_second, '/', ','), ',') group by trim(value) order by count(trim(value)) desc;

select dense_rank() over (order by timestamp), trim(value) from it_salary_2019
	cross apply string_split (replace(programming_language, '/', ','), ',');

select dense_rank() over (order by timestamp), trim(value) from it_salary_2020
	cross apply string_split (replace(programming_language, '/', '.'), ',');

--Splitting all secondary language (because it contains more than one element)
Create view Programming_Language_Table as
(
	select 
		year(timestamp) year,
		dense_rank() over (order by timestamp) Employee_Number, 
		coalesce(Programming_language, trim(value)) Primary_Programming_language, --moving secondary language to primary when primary is null
		case when programming_language = trim(value) then null else trim(value) end Secondary_Programming_languages,
		gross_income_cur_year,
		Years_of_experience,
		position,
		Seniority_level,
		company_size, 
		company_type
	from it_salary_2020
	cross apply string_split (replace(programming_language_second, '/', ','), ',')
);

--Creating view Programming_language using MSSMS interface
With Programming_language1 as
(
	select 
		year(timestamp) year,
		dense_rank() over (order by timestamp) Employee_Number, 
		coalesce(Programming_language, trim(value)) Primary_Programming_language, --moving secondary language to primary when primary is null
		case when programming_language = trim(value) then null else trim(value) end Secondary_Programming_languages,
		gross_income_cur_year,
		Years_of_experience,
		position,
		Seniority_level,
		company_size, 
		company_type
	from it_salary_2020
	cross apply string_split (replace(programming_language_second, '/', ','), ',')
)
select 
	year,
	dense_rank() over (order by employee_number) employee_number,
	trim(value) primary_programming_language,
	case when trim(value) = Secondary_Programming_languages then null else Secondary_Programming_languages end Secondary_Programming_languages,
	Gross_income_cur_year,
	Years_of_experience,
	position,
	seniority_level,
	company_size,
	company_type
from Programming_Language1 
cross apply string_split (Primary_Programming_language, ',')
where Secondary_Programming_languages is not null;

select count(*) from it_salary_2020;