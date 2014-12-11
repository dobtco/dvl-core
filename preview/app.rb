require 'sinatra/base'
require 'sinatra/assetpack'
require 'active_support/all'
require 'erector'
require 'dvl/core'
require 'yaml'

module AppHelpers
  def docs(name, &block)
    div.section_header name, id: name.downcase
    yield
  end

  def translations
    @translations ||= YAML::load(File.read("#{File.dirname(__FILE__)}/../config/locales/en.yml"))['en']
  end

  def t(key)
    pieces = key.split('.')
    found = translations.dup

    while pieces.length > 0
      found = found[pieces.shift] || {}
    end

    found
  end
end

Erector::HTMLWidget.send(:include, AppHelpers)

module Views
  class Base < Erector::Widget
    def content
      rawtext '<!doctype html>'
      html {
        head {
          link href: '//fonts.googleapis.com/css?family=Open+Sans:400,300,700,600', rel: 'stylesheet', type: 'text/css'

          link href: '/css/dvl/core.css', rel: 'stylesheet', type: 'text/css', media: 'all'
          link href: '/css/dvl/components/flashes.css', rel: 'stylesheet', type: 'text/css', media: 'all'
          link href: '/css/dvl/components/footer.css', rel: 'stylesheet', type: 'text/css', media: 'all'
          style(type: 'text/css') {
            rawtext %{
              body {
                padding: 0 1rem 1rem;
                background: white;
              }

              .section_header {
                font-size: 1.6rem;
                padding: 1rem 0 0.25rem;
                margin-bottom: 1rem;
                border-bottom: 1px solid #eee;
              }
            }
          }
        }
        body {
          main

          script src: '//code.jquery.com/jquery-1.11.1.min.js'
          script src: '/js/dvl/core/modals.js'
          script src: '/js/dvl/core/dropdowns.js'
          script src: '/js/dvl/core/tooltips.js'
          script src: '/js/dvl/core/buttons.js'
          script src: '/js/dvl/components/flashes.js'
          script %{
            $('[data-toggle="tooltip"]').tooltip()
          }.html_safe
        }
      }
    end
  end

  class Home < Base
    def main
      docs 'Buttons' do
        a.button 'Yo!'
        text ' '
        a.button.info 'Info'
        text ' '
        a.button.primary 'Primary'
        text ' '
        a.button.success 'Success'
        text ' '
        a.button.white 'White'
        text ' '
        a.button_uppercase 'Uppercase'
      end

      docs 'Code' do
        pre %{<p>This is some awesome code</p>}
        p %{This is a paragraph with <code>code</code>.}.html_safe
      end

      docs 'Dropdowns' do
        span.dropdown {
          a.dropdown_toggle 'Click me',
                            'data-toggle' => 'dropdown'
          div.dropdown_menu {
            ul.dropdown_body {
              li {
                a 'Hey! This is some really long dropdown text, yo.'
              }
              li {
                a 'No!'
              }
            }
          }
        }
      end

      docs 'Forms' do
        form {
          input type: 'text'
          label.checkbox {
            input type: 'checkbox'
            text 'Foo'
          }
          div.input_sub {
            label.checkbox {
              input type: 'checkbox'
              text 'This is a sub-option of foo.'
            }
          }
          div.form_actions {
            button.button.primary 'Submit'
          }
        }
      end

      docs 'Grid' do
        div.grid {
          div.item.six_columns 'six_columns'
          div.item.six_columns 'six_columns'
        }
        div.grid.gutter_none {
          div.item.three_columns 'three_columns (gutter_none)'
          div.item.three_columns 'three_columns (gutter_none)'
          div.item.three_columns 'three_columns (gutter_none)'
          div.item.three_columns 'three_columns (gutter_none)'
        }
      end

      docs 'Labels' do
        span.label.label_error 'Error'
        text ' '
        span.label.label_success 'Success'
        text ' '
        span.label.label_info 'Info'
        text ' '
        span.label.label_warning 'Warning'
      end

      docs 'Links' do
        a.uppercase 'Uppercase'
        text ' '
        a.smallbold 'Smallbold'
      end

      docs 'Lists' do
        ul {
          li 'This'
          li 'is a'
          li 'list!'
        }
      end

      docs 'Modals' do
        a 'Open modal', 'data-toggle' => 'modal', href: '#modal'
        widget Dvl::Components::Modal.new(title: 'Awesome modal', id: 'modal') do
          div.modal_body {
            text 'This is the modal body!'
          }
        end

        br

        a 'Confirmation modal', 'data-toggle' => 'modal', href: '#confirmModal'
        widget Dvl::Components::Modal.new(
          title: 'Are you sure?',
          id: 'confirmModal',
          html_opts: { class: 'modal_confirm' }
        ) do
          div.modal_body {
            text 'Are you sure?'
          }
          div.modal_footer {
            a.button.error 'OK'
          }
        end
      end

      docs 'Pagination' do
        div(class: 'pagination-wrapper') {
          ul {
            li { a '‹' }
            li { a '1' }
            li { span '2' }
            li { a '3' }
            li { a '›' }
          }
        }
      end

      docs 'Progress' do
        div.progress {
          div.progress_inner(style: "width: 30%") {
            text '30%'
          }
        }
      end

      docs 'Sidebar' do
        div.sidebar_box {
          ul.sidebar_data {
            li {
              div.sidebar_data_icon {
                i '✓'
              }
              div.sidebar_data_text {
                div.sidebar_data_label 'Label'
                div.sidebar_data_value 'Value'
                div.sidebar_data_details 'Details'
              }
            }
          }
        }
      end

      docs 'Tables' do
        table {
          thead {
            tr {
              th 'ID'
              th 'Name'
            }
          }
          tbody {
            tr {
              td '1'
              td 'Bob'
            }
            tr {
              td '2'
              td 'Job'
            }
          }
        }
      end

      docs 'Tooltips' do
        %w(top right bottom left).each do |x|
          a x.capitalize,
            'data-toggle' => 'tooltip',
            'data-placement' => x,
            'data-container' => 'body',
            title: "Tooltip on the #{x}!"
          text ' '
        end
      end

      docs 'Typography' do
        h1 'Heading 1'
        h2 'Heading 2'
        h3 'Heading 3'
        h4 'Heading 4'
        h5 'Heading 5'
        h6 'Heading 6'
        p 'Lorem ipsum.'

        p.microcopy {
          text 'This is some awesome .microcopy.'
          a.microcopy_action 'Microcopy action'
        }
      end
    end
  end

  class Flashes < Base
    def main
      ul {
        li {
          a 'Success', href: 'javascript:DvlFlash("success", "You did it!")'
        }
        li {
          a 'Info', href: 'javascript:DvlFlash("info", "An informational message...")'
        }
        li {
          a 'Error', href: 'javascript:DvlFlash("error", "Oh no, an error occured!")'
        }
      }
    end
  end

  class Footer < Base
    def main
      br
      br
      widget Dvl::Components::Footer.new(application_name: 'dvl-core')
    end
  end
end

class App < Sinatra::Base

  set :root, File.dirname(__FILE__)
  set :scss, { load_paths: [ "#{self.root}/../vendor/assets/stylesheets", "#{self.root}/../vendor/assets/stylesheets/dvl" ] }

  register Sinatra::AssetPack

  assets do
    serve '/css', from: '../vendor/assets/stylesheets'
    serve '/js', from: '../vendor/assets/javascripts'
  end

  get '/' do
    Views::Home.new.to_html
  end

  get '/flashes' do
    Views::Flashes.new.to_html
  end

  get '/footer' do
    Views::Footer.new.to_html
  end

  run! if app_file == $0
end
