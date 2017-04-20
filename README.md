* Ruby version
* System dependencies
* Configuration
* Database creation
* Database initialization
* How to run the test suite
* Services (job queues, cache servers, search engines, etc.)
* Deployment instructions

#Expat 2 Expat (xIIx)

xIIx is a job search engine for people who are looking to relocate to the UK and require sponsorship to be able to work. We provide job listings posted by companies who are known to sponsor Tier 2 visas for their employees.

###To scrape or not to scrape?
Considering the amount of tech startups that don't use job/candidate search engines, using an API isn't the optimal method to retrieve job listings. The tech industry is growing quite rapidly in London and the job search APIs available are usually not up to date with the tech jobs. 

Users can:

- Create and post a xIIx job listing or the link to the listing's url.
- Search through job listings of whitelisted companies
- See company profiles

###Technologies used
A full stack application using Ruby 5 API to serve data from a SQL database and Angular front-end to consume the data, some of which possess CRUD functionality.

- Ruby on Rails
- Angular
- SQL
- JavaScript

###Challenges
- Hardcoding 100 companies with info extracted from a PDF.
- Creating Indeed API request query with company names
- Matching companies to job postings through company name


###Other Stuff

`rails g scaffold User username email password_digest first_name last_name industry country_of_origin seeking_work:boolean `

`rails g scaffold Favorite api_source job_id:integer user:references company:references active:Boolean`

`rails g scaffold Company glassdoor_id careers_url status:Boolean`

`rails g scaffold Post subject body:text poster:references`

`rails g scaffold Comment body:text poster:references post:references`

###Indeed API


###Glassdoor API
####Documentation
#####GET list of tech job titles in the UK and numbers for each:
`http://api.glassdoor.com/api/api.htm?t.p=141792&t.k=inpX2hcMKfs&userip=0.0.0.0&useragent=&format=json&v=1&action=jobs-stats&country=United+Kingdom&jc=29&returnJobTitles=true&admLevelRequested=1`

######Response
``

#####GET list of cities and number of tech jobs in each:
`http://api.glassdoor.com/api/api.htm?t.p=141792&t.k=inpX2hcMKfs&userip=0.0.0.0&useragent=&format=json&v=1&action=jobs-stats&country=United+Kingdom&jc=29&returnCities=true&admLevelRequested=1`

######Response
`

	{
		"numJobs": 182472,
		"name": "London, England",
		"stateAbbreviation": "ENG",
		"stateName": "England",
		"id": 2671300,
		"latitude": 51.5,
		"longitude": -0.1166667
	}, {
		"numJobs": 18807,
		"name": "Birmingham, England",
		"stateAbbreviation": "ENG",
		"stateName": "England",
		"id": 3376957,
		"latitude": 52.466667,
		"longitude": -1.9166667
	}, ...
`


#####GET list of countries in the UK (and 'remote') and number of tech jobs in each:
`http://api.glassdoor.com/api/api.htm?t.p=141792&t.k=inpX2hcMKfs&userip=0.0.0.0&useragent=&format=json&v=1&action=jobs-stats&country=United+Kingdom&jc=29&returnStates=true&admLevelRequested=1`
######Response


###LinkedIn API
####Documentation
`https://developer.linkedin.com/docs/company-pages#company_updates`

#####To get company informatio:
`https://api.linkedin.com/v1/companies/{id}/updates?format=json &event-type=job-posting`
######Response
``
