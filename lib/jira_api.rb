require 'json'
require 'faraday'

module JiraApi

  class Client

    def initialize(jira_host, username=nil, password=nil)
      @jira_url = "#{jira_host}/rest/api/2/"
      @agent = Faraday.new(@jira_url) do |faraday|
        faraday.headers['Accept'] = 'application/json'
        faraday.adapter  Faraday.default_adapter  # make requests with Net::HTTP
      end
      @agent.basic_auth(username, password)
      @agent
    end

    def issue(issue)
      JSON.parse(@agent.get("#{@jira_url}issue/#{issue}").body)
    end
  end
end
