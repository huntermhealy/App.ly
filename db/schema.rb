# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160721144121) do

  create_table "applications", force: :cascade do |t|
    t.string   "link"
    t.datetime "due"
    t.integer  "num_recommendations"
    t.boolean  "essay"
    t.text     "essay_topics"
    t.integer  "award_amount"
    t.integer  "essay_word_count"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "category_id"
    t.index ["category_id"], name: "index_applications_on_category_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end
require File.expand_path('../lib/fullcalendar-rails/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ['bokmann','gr8bit']
  gem.email         = ['dbock@codesherpas.com','niklas@bichinger.de']
  gem.description   = %q{FullCalendar is a fantastic jQuery plugin that gives you an event calendar with tons of great AJAX wizardry, including drag and drop of events.  I like having managed pipeline assets, so I gemified it.}
  gem.summary       = %q{A simple asset pipeline bundling for Ruby on Rails of the FullCalendar jQuery plugin.}
  gem.homepage      = 'https://github.com/bokmann/fullcalendar-rails'

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = 'fullcalendar-rails'
  gem.require_paths = ['lib']
  gem.version       = Fullcalendar::Rails::VERSION
  gem.license       = 'MIT'

  gem.add_runtime_dependency 'jquery-rails', '>= 4.0.5', '< 5.0.0'
  gem.add_runtime_dependency 'jquery-ui-rails', '>= 5.0.2'
  gem.add_runtime_dependency 'momentjs-rails', '>= 2.9.0'
  gem.add_development_dependency 'rake', '~> 0'
end

end
