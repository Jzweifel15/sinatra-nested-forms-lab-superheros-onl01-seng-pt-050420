require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }


    get '/' do
      erb :'../views/super_hero'
    end


    post '/teams' do
      @team_name = params[:team][:name]
      @team_motto = params[:team][:motto]

      @hero_names = []
      @hero_powers = []
      @hero_bios = []

      @super_heroes.each do |hero|
        @hero_names.push(hero[:name])
        @hero_powers.push(hero[:power])
        @hero_bios.push(hero[:bio])
      end

      erb :'../views/team'
    end
    
end