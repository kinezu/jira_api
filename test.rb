require File.expand_path(File.dirname(__FILE__) + '/lib/jira_api')

jira_host = ""
username = ""
password = ""

@client = JiraApi::Client.new(jira_host, username, password)

puts @client.issue("BUG-555")