require 'sinatra/base'
require 'sinatra/assetpack'
require 'active_support/all'
require 'erector'
require 'dvl/core'

class App < Sinatra::Base

  set :root, File.dirname(__FILE__)

  register Sinatra::AssetPack

  assets do
    serve '/css', from: '../vendor/assets/stylesheets'
  end

  get '/' do
    Erector.inline {
      rawtext '<!doctype html>'
      html {
        head {
          link href: '/css/dvl/core.css', rel: 'stylesheet', type: 'text/css', media: 'all'
        }
        body {
          text 'Hello, world!'
        }
      }
    }.to_html
  end

  run! if app_file == $0
end
