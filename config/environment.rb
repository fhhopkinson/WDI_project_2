require "sinatra/reloader" if development?

# require flash
require 'sinatra/flash'
require_relative '../lib/sinatra-flash'
register Sinatra::Flash

# Setup app to use SASS
require 'sass/plugin/rack'
Sass::Plugin.options[:style] = :compact
use Sass::Plugin::Rack

# Setup the asset pipeline
register Sinatra::AssetPack
assets do
  js :application, [
    '/bower_components/jquery/dist/jquery.min.js',
    '/bower_components/bootstrap/dist/js/bootstrap.min.js',
    '/js/app.js'
  ]
  css :application, [
    '/bower_components/bootstrap/dist/css/bootstrap.min.css',
    '/stylesheets/style.css'
  ]
  js_compression  :jsmin    # :jsmin | :yui | :closure | :uglify
  css_compression :simple   # :simple | :sass | :yui | :sqwish
end


configure do
  enable :sessions
  set :session_secret, ENV['SESSION_SECRET'] || "this is a secret, shhhhh"
  set :views, File.join(Sinatra::Application.root, "app", "views")
end

# Some helper constants for path-centric logic
APP_ROOT = Pathname.new(File.expand_path('../../', __FILE__))
APP_NAME = APP_ROOT.basename.to_s

# Setup carrierwave
require 'carrierwave/orm/activerecord'
require_relative '../app/uploaders/image_uploader'

CarrierWave.configure do |config|
  config.root = File.join(APP_ROOT + "public")
  ActiveRecord::Base.raise_in_transactional_callbacks = true
end

# Set up the models, controllers and helpers
Dir[APP_ROOT.join('app', 'models', '*.rb')].each { |file| require file }
Dir[APP_ROOT.join('app', 'controllers', '*.rb')].each { |file| require file }
Dir[APP_ROOT.join('app', 'helpers', '*.rb')].each { |file| require file }
