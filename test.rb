require File.expand_path(File.dirname(__FILE__) + '/lib/jira_api')

jira_host = ""
jira_username = ""
jira_password = ""

@client = JiraApi::Client.new(jira_host, jira_username, jira_password)

puts @client.issue("BUG-555")