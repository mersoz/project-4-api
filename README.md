* Ruby version
* System dependencies
* Configuration
* Database creation
* Database initialization
* How to run the test suite
* Services (job queues, cache servers, search engines, etc.)
* Deployment instructions

#Legal Alien

Legal Alien is a job search engine for people who are looking to relocate to the UK and require sponsorship to be able to work. The app provides job listings from the Indeed API posted by companies who are known to sponsor Tier 2 visas for their employees.

###To scrape or not to scrape?
Considering the amount of tech startups that don't use job/candidate search engines, using an API isn't the optimal method to retrieve job listings. The tech industry is growing quite rapidly in London and the job search APIs available are usually not up to date with the tech jobs.

Users can:
- Search through job listings of whitelisted companies
- Add listings to favorites
- See company information and see all listings posted by that company
- Find job statistics for positions in technology and software
- Post on the forum

###Technologies used
A full stack application using Ruby 5 API to serve data from a SQL database and Angular front-end to consume the data, some of which possess CRUD functionality.

- Ruby on Rails
- Angular
- SQL
- JavaScript

###Challenges
- Hardcoding 100 companies with info extracted from a PDF (overcome by creating a task runner to extract text from PDFs and styling the text into company seeds)
- Creating Indeed API request query with company names (a looooong query, thanks Indeed for having good search customizability)
- Matching companies to job postings through company name (required some formatting of company names but solved with ```Company.find_by(name: listing["company"])```)

###Indeed API
The Indeed API was used to collect and display all job listings by whitelisted companies

###Glassdoor API
The Glassdoor API was used for company information and job statistics

###Future
* Add all 27,000+ UK companies for the official government list (available in PDF)
* Have dynamic listings instead of seeded
