class GlassdoorController < ApplicationController
  def job_titles
    base_url = "http://api.glassdoor.com/api/api.htm?&userip=0.0.0.0&useragent="

    response = HTTParty.get("#{base_url}", {
      query: {
        format: "json",
        v: "1",
        "t.k": ENV["GLASSDOOR_API_KEY"],
        "t.p": ENV["GLASSDOOR_PARTNER_ID"],
        action: "jobs-stats",
        country: "United+Kingdom",
        jc: "29",
        returnJobTitles: "true",
        admLevelRequested: "2"
      },
      headers: { 'Accept' => 'application/json' }
    })

    render json: response, status: :ok if response
  end

  def company_info(company_name)
    puts params
    base_url = "http://api.glassdoor.com/api/api.htm?&userip=0.0.0.0&useragent="

    response = HTTParty.get("#{base_url}", {
      query: {
        format: "json",
        v: "1",
        "t.k": ENV["GLASSDOOR_API_KEY"],
        "t.p": ENV["GLASSDOOR_PARTNER_ID"],
        action: "employers",
        country: "United+Kingdom",
        admLevelRequested: "2",
        q: "#{company_name}"
      },
      headers: { 'Accept' => 'application/json' }
    })

    render json: response, status: :ok if response
  end
end
