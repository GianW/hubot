require 'mina/git'

set :domain, '104.236.246.109'
set :port, '22'

set :path, '$HOME/bin'
set :deploy_to, '/home/hubot/app'
set :repository, 'git@github.com:fator7/hubot.git'
set :branch, 'master'

set :user, 'hubot'
set :forward_agent, true

task :environment do
  queue! %[#{echo_cmd %{export PATH="#{path}:$PATH"}}]
end

task :setup => :environment do
  queue! %[#{echo_cmd %{ssh-keyscan -H github.com > ~/.ssh/known_hosts}}]
end

desc "Deploys the current version to the server."
task :deploy => :environment do
  deploy do
    invoke :'git:clone'
    queue! %[#{echo_cmd %{npm install}}]
    queue! %[#{echo_cmd %{npm update}}]
  end
end