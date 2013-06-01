# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require_relative "countries.rb"
require_relative "categories.rb"

create_countries
create_categories


def create_days_of_week
  begin

    if DaysOfWeek.all.size == 0

      DaysOfWeek.create([
                            {:name=>"Segunda-Feira"},
                            {:name=>"Terça-Feira"},
                            {:name=>"Quarta-Feira"},
                            {:name=>"Quinta-Feira"},
                            {:name=>"Sexta-Feira"},
                            {:name=>"Sábado"},
                            {:name=>"Domingo"}

                        ])
    end

  end
end