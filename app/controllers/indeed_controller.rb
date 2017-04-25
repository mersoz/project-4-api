class IndeedController < ApplicationController
  def indeed_listings
    hundred_companies = [
      {
        name: "Unlisted companies",
        website: "www.google.com",
        description: ""
      }, {
        name: "Profusion",
        website: "www.profusion.com",
        description: "Profusion is a data science consultancy, helping clients to understand – and improve – their relationships with people."
      }, {
        name: "Pusher Ltd",
        website: "www.pusher.com",
        description: "Pusher helps developers to get more done without reinventing the wheel. They build developer tools to help make realtime easy."
      }, {
        name: "Granttree",
        website: "www.granttree.co.uk",
        description: "GrantTree helps tech startups access government funding more easily."
      }, {
        name: "La Fosse Associates",
        website: "www.lafosse.com",
        description: "La Fosse Associates is a full service, values based technology and digital recruiter working at all levels from the board down."
      }, {
        name: "Onefinestay",
        website: "www.onefinestay.com",
        careers_url: "www.onefinestay.com/jobs/",
        description: "onefinestay combines the best elements of a hotel stay with the comfort and personality of real homes in upscale neighbourhoods."
      }, {
        name: "Outbrain",
        website: "www.outbrain.com",
        careers_url: "www.outbrain.mytribehr.com/careers",
        description: "Outbrain help people discover content that they can trust to be interesting, relevant and timely for them."
      }, {
        name: "Accord Group",
        website: "www.accordgroup.co.uk",
        careers_url: "www.accordgroup.co.uk/who-are-we/work-us",
        description: "The Accord Group is an independent marketing agency which specialises in the Travel, Recruitment and Education market sectors."
      }, {
        name: "New Bamboo",
        website: "www.new-bamboo.co.uk",
        careers_url: "www.new-bamboo.co.uk/careers",
        description: "New Bamboo build web based software to help grow businesses with Ruby, Rails, JavaScript, HTML5 and other web technologies."
      }, {
        name: "Moo Print",
        website: "www.moo.com",
        careers_url: "www.moo.com/about/jobs",
        description: "MOO is an award-winning online print business that is passionate about great design."
      }, {
        name: "Onfido",
        website: "www.onfido.com",
        careers_url: "www.onfido.com/careers",
        description: "Onfido is the data-driven platform for making fast, informed decisions on who you can trust."
      }, {
        name: "Brands2life",
        website: "www.brands2life.com",
        careers_url: "www.brands2life.com/careers",
        description: "We are a digitally-led integrated communications agency for business impact."
      }, {
        name: "We Are Friday",
        website: "www.wearefriday.com",
        careers_url: "www.wearefriday.com/you",
        description: "The Accord Group is an independent marketing agency which specialises in the Travel, Recruitment and Education market sectors."
      }, {
        name: "Lovecrafts",
        website: "www.lovecrafts.com",
        careers_url: "https://lovecrafts.recruiterbox.com/",
        description: "Visit any site in the LoveCrafts family and you'll see a world designed for makers."
      }, {
        name: "Stripe",
        website: "https://stripe.com/gb",
        careers_url: "https://stripe.com/jobs/",
        description: "Web and mobile payments, built for developers."
      }, {
        name: "Zone",
        website: "www.thisiszone.com",
        careers_url: "www.thisiszone.com/join",
        description: "We help great brands thrive in a digital world by bringing businesses and customers closer together."
      }, {
        name: "Feefo Holdings",
        website: "www.feefo.com",
        careers_url: "www.feefo.com/web/en/careers-at-feefo-the-ratings-and-review-company",
        description: "Global ratings and reviews provider, offering genuine feedback as used by the world's most trusted brands."
      }, {
        name: "Rockabox Media",
        website: "www.rockabox.com",
        careers_url: "www.rockabox.com/about",
        description: "Rockabox is the leading programmatic rich media platform for brand creativity."
      }, {
        name: "Deliveroo",
        website: "www.deliveroo.co.uk",
        careers_url: "www.deliveroo.co.uk/careers",
        description: "Order high-quality takeaway online from top UK restaurants, fast delivery straight to your home or office."
      }, {
        name: "Adludio",
        website: "www.adludio.com",
        careers_url: "www.adludio.com/careers",
        description: "The world's leading Sensory Advertising Platform."
      }, {
        name: "Conversocial",
        website: "www.conversocial.com",
        careers_url: "www.conversocial.com/about-us/careers",
        description: "Conversocial is a leading cloud-based social customer service solution."
      }, {
        name: "Essence Digital",
        website: "www.essencedigital.com",
        careers_url: "www.essencedigital.com/#careers",
        description: "Essence is the world's largest independent buyer of digital media."
      }, {
        name: "Rentify",
        website: "www.rentify.com",
        careers_url: "www.rentify.com/jobs",
        description: "No Hassle Lettings & Management. More than 175,000 landlords trust Rentify with their property."
      }, {
        name: "Secret Sales",
        website: "www.secretsales.com",
        careers_url: "www.secretsales.com/careers",
        description: "SECRETSALES.com organises online sales of exclusive designer fashion brands."
      }, {
        name: "Kayako",
        website: "www.kayako.com",
        careers_url: "www.kayako.com/company/careers",
        description: "Help Desk Software and Customer Service Software. Improve customer satisfaction, increase sales."
      }, {
        name: "Hailo",
        website: "www.hailoapp.com",
        careers_url: "http://hailo.workable.com",
        description: "Get a licensed car or taxi with just two taps of the free app on your iPhone or Android phone."
      }, {
        name: "Shazam",
        website: "www.shazam.com",
        careers_url: "www.shazam.com/careers",
        description: "Identify the media playing around you, explore the music and TV you love. Discover song lyrics from your favourite artists and albums on Shazam."
      }, {
        name: "Somo Global",
        website: "www.somoglobal.com",
        careers_url: "www.somoglobal.com/#careers",
        description: "Somo has been mobile-first since our birth in 2009, and our mission is to help you increase sales, customer engagement and productivity."
      }, {
        name: "Made By Many",
        website: "www.madebymany.com",
        careers_url: "www.madebymany.com/jobs",
        description: "Help clients take on the challenge of rapid change in markets and technologies by creating brilliantly successful digital products and new ventures."
      }, {
        name: "Infectious Media",
        website: "www.infectiousmedia.com",
        careers_url: "www.infectiousmedia.com/about-us/work-for-us",
        description: "Infectious Media deliver customised programmatic advertising campaigns powered by BIG data."
      }, {
        name: "Make It Cheaper",
        website: "www.makeitcheaper.com",
        careers_url: "www.makeitcheaper.com/careers",
        description: "Our expert service helps you get on – and stay on – lower, fairer rates for electricity, gas, landline, broadband, merchant services and insurance."
      }, {
        name: "Privax",
        website: "www.hidemyass.com",
        careers_url: "www.hidemyass.com/jobs",
        description: "Privax LTD, the parent company of Hide My Ass!, is the global leader in the VPN and privacy space."
      }, {
        name: "Nutmeg",
        website: "www.nutmeg.com",
        careers_url: "www.nutmeg.com/about/careers",
        description: "Nutmeg is a savings and investment management service for successful professionals."
      }, {
        name: "Appear Here",
        website: "www.appearhere.co.uk",
        careers_url: "www.appearhere.co.uk/about/careers",
        description: "Find and book short-term pop up shop space. We work with the UK's best shopping areas to give your business the presence it deserves."
      }, {
        name: "Greyspark Partners",
        website: "www.greyspark.com",
        careers_url: "www.greyspark.com/careers",
        description: "A capital markets consultancy that works with investment banks, hedge funds and asset management firms to deliver solutions that work."
      }, {
        name: "Make Positive",
        website: "www.makepositive.com",
        careers_url: "www.makepositive.com/vacancies",
        description: "Salesforce consulting partner offering a range of cloud solutions including social enterprise, collaboration, contact centre and customer engagement."
      }, {
        name: "Msl Group",
        website: "www.mslgroup.co.uk",
        careers_url: "www.mslgroup.co.uk/#section_7",
        description: "MSL Group is a communications agency specialising in PR, Employee Engagement, Digital & Social Strategy, Content Marketing."
      }, {
        name: "Ten Group",
        website: "www.tengroup.com",
        careers_url: "www.tengroup.com/page/5615/careers",
        description: "Ten Group: intelligent support. Award-winning international lifestyle concierge and professional support experts."
      }, {
        name: "Fusepump",
        website: "www.fusepump.com",
        careers_url: "www.fusepump.com/careers",
        description: "We are digital marketing geeks. FusePump is a strategic partner to brands, helping them understand and apply technology to succeed in digital commerce."
      }, {
        name: "Capital On Tap",
        website: "www.capitalontap.com",
        careers_url: "www.capitalontap.com/About#careers",
        description: "Small business funding designed to help your business grow."
      }, {
        name: "Marmalade Technologies",
        website: "www.madewithmarmalade.com",
        careers_url: "www.madewithmarmalade.com/vacancies",
        description: "Marmalade is an award winning, cross-platform development tool."
      }, {
        name: "Valiantys",
        website: "www.valiantys.com",
        careers_url: "www.valiantys.com/en/company/join-us",
        description: "Valiantys is a consultancy specialising in the deployment and integration of Atlassian tools such as JIRA."
      }, {
        name: "Hotwire: Gb",
        website: "www.hotwirepr.co.uk",
        careers_url: "www.hotwirepr.co.uk/careers",
        description: "Hotwire is a global PR and communications agency dedicated to helping forward-looking organisations."
      }, {
        name: "Nexmo",
        website: "www.nexmo.com",
        careers_url: "www.nexmo.com/company/careers",
        description: "Nexmo is a simple API to push SMS at wholesale rates with high deliverability. Reach over 4 billion mobiles in more than 200 countries."
      }, {
        name: "Homeaway",
        website: "www.homeaway.co.uk",
        careers_url: "www.homeaway.co.uk/info/about-us/careers",
        description: "As the world’s #1 choice for holiday homes, we connect property owners and managers with holidaymakers."
      }, {
        name: "Metapack",
        website: "www.metapack.com",
        careers_url: "www.metapack.com/recruitment",
        description: "MetaPack has the largest Carrier Label Library around the world. We integrate with over 300 carriers and delivery providers worldwide."
      }, {
        name: "Bookingbug",
        website: "uk.bookingbug.com",
        careers_url: "uk.bookingbug.com/jobs",
        description: "Online scheduling, booking, reservation and appointment system for any business."
      }, {
        name: "Emperor Design",
        website: "www.emperordesign.co.uk",
        careers_url: "www.emperordesign.co.uk/Contact-Us/Careers",
        description: "Emperor is a UK and international corporate communications, digital and brand agency."
      }, {
        name: "Mendeley",
        website: "www.mendeley.com",
        careers_url: "www.mendeley.com/careers",
        description: "Easily organise your papers, read & annotate your PDFs, collaborate in private or open groups, and securely access your research from everywhere."
      }, {
        name: "Sprinklr",
        website: "www.sprinklr.com",
        careers_url: "www.sprinklr.com/opportunities-at-sprinklr",
        description: "Social Media Management software company Sprinklr enables global scale marketing automation for the enterprise with a social CRM."
      }, {
        name: "Jones Knowles Ritchie",
        website: "www.jkrglobal.com",
        careers_url: "www.jkrglobal.com/join-us",
        description: "Welcome to global design agency jones knowles ritchie."
      }, {
        name: "Asite Solutions",
        website: "www.asite.com",
        careers_url: "www.asite.com/careers",
        description: "Offers various hosted applications and solutions specifically designed for the construction industry."
      }, {
        name: "Fitflop",
        website: "www.fitflop.co.uk",
        careers_url: "careers.fitflop.com",
        description: "Largest selection of FitFlop women's and men's, sandals, shoes, clogs, sneakers, boots."
      }, {
        name: "Translate Plus",
        website: "www.translateplus.com",
        careers_url: "www.translateplus.com/about/careers",
        description: "Communication made easy. Award-winning services enabling clients to engage with their global audience, increase ROI and achieve brand consistency."
      }, {
        name: "Webcredible",
        website: "www.webcredible.com",
        careers_url: "www.webcredible.com/jobs",
        description: "User experience (UX) agency creating people-centred, efficient and delightful digital experiences since 2003."
      }, {
        name: "Periscopix",
        website: "www.periscopix.co.uk",
        careers_url: "www.periscopix.co.uk/careers",
        description: "UK PPC Management experts specialising in Pay Per Click, Display advertising & Google Analytics. We design & manage PPC campaigns to maximise ROI."
      }, {
        name: "Uswitch",
        website: "www.uswitch.com",
        careers_url: "www.uswitch.com/careers",
        description: "Provides comparisons of gas and electricity suppliers, digital TV providers, home telephone providers, broadband internet and mobile phone packages."
      }, {
        name: "Geonomics Global Games",
        website: "www.geonomics.com",
        careers_url: "www.geonomics.com/careers",
        description: "We believe the lottery industry needs to create new games that appeal to today’s players. And we’re here to make that happen."
      }, {
        name: "Black Swan Data",
        website: "www.blackswan.com",
        careers_url: "www.blackswan.com/blog/careers",
        description: "With experience in big data, marketing, digital engineering, data science, Black Swan Data deliver innovative business intelligence and digital solutions."
      }, {
        name: "Bluefin Solutions",
        website: "www.bluefinsolutions.com",
        careers_url: "www.bluefinsolutions.com/Careers",
        description: "Bluefin Solutions is a global independent consultancy and SAP partner inspiring enterprises to prosper in the digital world."
      }, {
        name: "Cloudreach",
        website: "www.cloudreach.com",
        careers_url: "www.cloudreach.com/gb-en/careers",
        description: "A global cloud consultancy & operational services provider with premier partner status with AWS, Google & a growing force within the Salesforce.com community."
      }, {
        name: "Funding Circle",
        website: "www.fundingcircle.com/uk",
        careers_url: "www.fundingcircle.com/blog/jobs",
        description: "Funding Circle is the leading online marketplace for business loans, where people and organisations can directly lend to small businesses."
      }, {
        name: "Dxi",
        website: "www.dxi.eu",
        careers_url: "www.dxi.eu/careers",
        description: "DXI, an 8x8 company, provides cloud based communication solutions to enterprises worldwide."
      }, {
        name: "Taboola",
        website: "www.taboola.com",
        careers_url: "jobs.taboola.com",
        description: "Taboola is the leading discovery platform, serving over 200bn recommendations to over 550m unique visitors on some of the Web’s most innovative publisher sites."
      }, {
        name: "Checkout.Com",
        website: "www.checkout.com",
        careers_url: "www.checkout.com/careers",
        description: "Serving online and mobile businesses, from small companies to multinationals, with innovative payment solutions and spirited support."
      }, {
        name: "The Exchange Lab",
        website: "www.theexchangelab.com",
        careers_url: "www.theexchangelab.com/contact-us",
        description: "The Exchange Lab (theexchangelab.com) is One for All. One company connected to the world's largest programmatic digital media marketplace."
      }, {
        name: "Buyagift",
        website: "www.buyagift.co.uk",
        careers_url: "www.buyagift.co.uk/careers",
        description: "The UK's leading online gift experience retailer with over 4,000 gift ideas to choose from."
      }, {
        name: "Poke London",
        website: "www.pokelondon.com",
        careers_url: "www.pokelondon.com/join",
        description: "We create, define and craft unforgettable digital experiences."
      }, {
        name: "Fourth",
        website: "www.fourth.com",
        careers_url: "www.fourth.com/about/careers",
        description: "Fourth is the world’s leading provider of cloud-based cost control solutions to the hospitality industry."
      }, {
        name: "Iwoca",
        website: "www.iwoca.co.uk",
        careers_url: "www.iwoca.co.uk/about_us",
        description: "iwoca is a fintech start-up, offering a new type of finance designed for small businesses. An iwoca credit facility allows a business to borrow up to £50,000 on demand."
      }, {
        name: "Autotask",
        website: "www.autotask.com",
        careers_url: "www.autotask.com/about-us/careers",
        description: "Autotask is the #1 provider of web-based IT Services Management Software, used by thousands of IT service professionals worldwide."
      }, {
        name: "Concep",
        website: "www.concep.com",
        careers_url: "www.concep.com/jobs",
        description: "Concep is a provider of empowerment marketing technology and services to corporate and professional firms globally."
      }, {
        name: "Space Ape Games",
        website: "www.spaceapegames.com",
        careers_url: "www.spaceapegames.com/careers",
        description: "Space Ape Games is a Mobile/Social Gaming startup with big aspirations to make the highest quality and most successful games on your smart phone and tablet."
      }, {
        name: "Threepipe",
        website: "www.threepipe.co.uk",
        careers_url: "www.threepipe.co.uk/join-us",
        description: "We help our clients to grow through joined-up marketing. Digital + PR + Social + Content."
      }, {
        name: "Deltatre Media",
        website: "www.deltatre.com",
        careers_url: "careers.deltatre.com",
        description: "Using innovative technology, creativity and total commitment, the people at Deltatre make sport events come to life for audiences everywhere."
      }, {
        name: "Atom42",
        website: "www.atom42.co.uk",
        careers_url: "www.atom42.co.uk/careers",
        description: "An online marketing agency based in Camden. We help our clients increase the business they get through their websites."
      }, {
        name: "The Dmw Group",
        website: "www.dmwgroup.com",
        careers_url: "www.dmwgroup.com/careers",
        description: "We deliver complex, business critical IT transformation projects, moving seamlessly from strategy through to operations."
      }, {
        name: "Wazoku",
        website: "www.wazoku.com",
        careers_url: "www.wazoku.com/about-us/jobs",
        description: "Wazoku are here to open the market of idea generation all the way through your business, making it simple for the best ideas to reach the best people."
      }, {
        name: "Achica",
        website: "www.achica.com",
        careers_url: "www.achica.com/Jobs",
        description: "ACHICA is a members-only online lifestyle store offering premium home, furniture and lifestyle brands at exceptional prices."
      }, {
        name: "Blis Media",
        website: "www.blismedia.com",
        careers_url: "www.blismedia.com/work-for-us",
        description: "BlisMedia uses proprietary technology to deliver the most accurate and reliable mobile location and behavioural data for digital advertisers."
      }, {
        name: "Distilled",
        website: "www.distilled.net",
        careers_url: "www.distilled.net/jobs",
        description: "We’re a creative online marketing agency with a love of sharing knowledge."
      }, {
        name: "Truly Experiences",
        website: "www.trulyexperiences.com",
        careers_url: "www.trulyexperiences.com/careers",
        description: "At TRULY (trulyexperiences.com), we believe that extraordinary and meaningful experiences create powerful memories that will last a lifetime."
      }, {
        name: "Massive Interactive Media",
        website: "www.massiveinteractive.com",
        careers_url: "www.massiveinteractive.com/joinus",
        description: "Massive Interactive is a leading provider of software & design services for content distribution, the help build, grow & engage a wider audience on multiple platforms."
      }, {
        name: "Peerius",
        website: "www.peerius.com",
        careers_url: "www.peerius.com/about-us/work-for-us",
        description: "Peerius is the UK market leader in website personalisation software solutions."
      }, {
        name: "Elvis Communications",
        website: "www.elviscommunications.com",
        careers_url: "www.elviscommunications.com/people",
        description: "We are an award winning integrated creative agency that believes you can’t afford to be ordinary."
      }, {
        name: "Smarkets",
        website: "www.smarkets.com",
        careers_url: "www.smarkets.com/careers",
        description: "Smarkets is a betting exchange that offers a secure and transparent platform for trading on sporting, political and current affairs events."
      }, {
        name: "Vuture",
        website: "www.vutu.re",
        careers_url: "www.vutu.re/contact/join-the-vuture-team",
        description: "Vuture is the leading CRM integrated, web-based marketing automation tool that lets you personalise marketing and measure results."
      }, {
        name: "Bloom Design",
        website: "www.bloom-london.com",
        careers_url: "www.bloom-london.com/recruitment",
        description: "Bloom is an independent brand design agency with global reach. We create, define and design brands."
      }, {
        name: "Statpro",
        website: "www.statpro.com",
        careers_url: "www.statpro.com/about-us/careers",
        description: "StatPro is a global provider of portfolio analytics for the investment community."
      }, {
        name: "Worldstores",
        website: "www.worldstores.co.uk",
        careers_url: "worldstores-ltd.workable.com",
        description: "With an exceptional record of over 50% growth in each of the last 5 years, we’ve become the UK’s largest online retailer of products for the home and garden."
      }, {
        name: "Boat International Media",
        website: "www.boatinternationalmedia.com",
        careers_url: "www.boatinternationalmedia.com/careers",
        description: "Boat International Media is the world’s leading media group serving the superyacht industry."
      }, {
        name: "Data Centre Dynamics",
        website: "www.datacenterdynamics.com",
        description: "DatacenterDynamics, part of DCD Group is an international B2B media and publishing company."
      }, {
        name: "What If",
        website: "www.whatifinnovation.com",
        careers_url: "www.whatifinnovation.com/people",
        description: "We invent new products, brands, services, and business models, and we help our partners build their in-house innovation capabilities."
      }, {
        name: "Netnames Operations",
        website: "www.netnames.com",
        careers_url: "www.netnames.com/company/careers",
        description: "NetNames provides companies with global reach on the internet whilst protecting their brands from online fraud."
      }, {
        name: "Cloudsense",
        website: "www.cloudsense.com",
        careers_url: "www.cloudsense.com/company/careers",
        description: "CloudSense is a global leader in industry platforms for Quote-to-Cash."
      }, {
        name: "psHEALTH",
        website: "www.pshealth.co.uk",
        careers_url: "www.pshealth.co.uk/about-us/careers",
        description: "We help providers of health and social care deliver more efficient services and better outcomes."
      }, {
        name: "Ixaris Systems",
        website: "www.ixaris.com",
        careers_url: "www.ixaris.com/about-us/careers",
        description: "Ixaris is a leading provider of prepaid technologies and solutions."
      }, {
        name: "Unique Digital Marketing",
        website: "www.uniquedigital.co.uk",
        careers_url: "www.uniquedigital.co.uk/careers",
        description: "We are a full-service digital marketing agency with offices in London, New York and Hamburg."
      }, {
        name: "1000 Heads",
        website: "www.1000heads.com",
        careers_url: "www.1000heads.com/recruitment",
        description: "We are the Word of Mouth People. We help brands to be more social; to talk to people, and to be talked about by people."
      }, {
        name: "A Little Bird",
        website: "www.alittle-bird.com",
        careers_url: "www.alittle-bird.com/jobs",
        description: "A Little Bird is an integrated, ideas led agency that creates and delivers campaigns and experiences with brand storytelling at their core."
      }, {
        name: "Greenlight",
        website: "www.greenlightdigital.com",
        careers_url: "www.greenlightdigital.com/careers",
        description: "Greenlight is a multiple award-winning digital marketing agency that designs, builds, deploys and measures marketing solutions and campaigns."
      }
    ]

    companies_as_query = hundred_companies.map { |e| e[:name].include?(" ") ? "(#{e[:name]})" : e[:name] }.join(" or ")

    base_url = "http://api.indeed.com/ads/apisearch?&l=&sort=&radius=&st=&filter=&latlong=1&chnl=&userip=1.2.3.4&useragent=Mozilla/%2F4.0%28Firefox%29&v=2"

    response = HTTParty.get("#{base_url}", {
      query: {
        format: "json",
        publisher: ENV["INDEED_PUBLISHER_KEY"],
        # st: "employer",
        q: "((developer or engineer or designer or server or stack or http) and (web or website or html or css or javascript or jquery or react or java or ruby or python or or php or sql or angular)) and company:(#{companies_as_query})",
        # l: "London",
        jt: "fulltime",
        co: "gb",
        start: 0,
        limit: 25
      },
      headers: { 'Accept' => 'application/json' }
    })

    # response.each do |listing|
    response.parsed_response["results"].each do |listing|
        p listing
    end

    render json: response, status: :ok if response
  end
end
