class IndeedController < ApplicationController
  def indeed_listings

    approved_companies = [
      "Profusion",
      "Pusher",
      "GrantTree",
      "La Fosse Associates",
      "onefinestay",
      "Outbrain",
      "Accord Group",
      "New Bamboo",
      "MOO Print",
      "Onfido",
      "Brands2Life",
      "We Are Friday",
      "Lovecrafts",
      "Stripe",
      "Zone",
      "Feefo Holdings",
      "Rockabox Media",
      "Deliveroo",
      "Adludio",
      "Conversocial",
      "Essence Digital",
      "Rentify",
      "Secret Sales",
      "Kayako",
      "Hailo",
      "Shazam",
      "Somo Global",
      "Made by Many",
      "Infectious Media",
      "Make It Cheaper",
      "Privax",
      "Nutmeg",
      "Appear Here",
      "GreySpark",
      "Make Positive",
      "MSL Group",
      "Ten Group",
      "FusePump",
      "Capital on Tap",
      "Marmalade Technologies",
      "Valiantys",
      "Hotwire",
      "Nexmo",
      "HomeAway",
      "Metapack",
      "Bookingbug",
      "Emperor Design",
      "Mendeley",
      "Sprinklr",
      "Jones Knowles Ritchie",
      "Asite Solutions",
      "FitFlop",
      "Translate Plus",
      "Webcredible",
      "Periscopix",
      "uSwitch",
      "Geonomics Global Games",
      "Black Swan Data",
      "Bluefin Solutions",
      "Cloudreach",
      "Funding Circle",
      "DXI",
      "Taboola",
      "Checkout.com",
      "The Exchange Lab",
      "Buyagift",
      "Poke London",
      "Fourth",
      "iwoca",
      "Autotask",
      "Concep",
      "Space Ape Games",
      "Threepipe",
      "Deltatre Media",
      "atom42",
      "The DMW Group",
      "Wazoku",
      "Achica",
      "Blis Media",
      "Distilled",
      "Truly Experiences",
      "Massive Interactive Media",
      "Peerius",
      "Elvis Communications",
      "Smarkets",
      "Vuture",
      "Bloom Design",
      "StatPro",
      "Worldstores",
      "Boat International Media",
      "Data Centre Dynamics",
      "DatacenterDynamics",
      "What If",
      "NetNames Operations",
      "CloudSense",
      "psHEALTH",
      "Ixaris Systems",
      "1000 Heads",
      "A Little Bird",
      "Greenlight"
    ]

    multi_word_adapted = approved_companies.map do |e|
      if e.include? " "
        "(#{e})"
      else
        e
      end
    end

    companies_as_query = multi_word_adapted[0..100].join(" or ")
    init = 0
    base_url = "http://api.indeed.com/ads/apisearch?&l=&sort=&radius=&st=&filter=&latlong=1&chnl=&userip=1.2.3.4&useragent=Mozilla/%2F4.0%28Firefox%29&v=2"

    response = HTTParty.get("#{base_url}", {
      query: {
        format: "json",
        publisher: "4374475886375953",
        # st: "employer",
        q: "(web or developer or java or ruby or python) company:(#{companies_as_query})",
        # l: "London",
        jt: "fulltime",
        co: "gb",
        start: "#{init}",
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
