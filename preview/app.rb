require 'sinatra/base'
require 'sinatra/assetpack'
require 'active_support/all'
require 'erector'
require 'dvl/core'

module AppHelpers
  def docs(name, &block)
    div.section_header name, id: name.downcase
    yield
  end
end

Erector::HTMLWidget.send(:include, AppHelpers)

class App < Sinatra::Base

  set :root, File.dirname(__FILE__)
  set :scss, { load_paths: [ "#{self.root}/../vendor/assets/stylesheets/dvl" ] }

  register Sinatra::AssetPack

  assets do
    serve '/css', from: '../vendor/assets/stylesheets'
    serve '/js', from: '../vendor/assets/javascripts'
  end

  get '/' do
    Erector.inline {
      rawtext '<!doctype html>'
      html {
        head {
          link href: '//fonts.googleapis.com/css?family=Open+Sans:400,300,700,600', rel: 'stylesheet', type: 'text/css'

          link href: '/css/dvl/core.css', rel: 'stylesheet', type: 'text/css', media: 'all'
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
                    a 'Hey!'
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
            div(class: 'modal', tabindex: '-1', id: 'modal') {
              div.modal_dialog {
                div.modal_content {
                  div.modal_header {
                    a.close '&times;'.html_safe, 'data-dismiss' => 'modal'
                    h3 'Awesome modal'.html_safe
                  }

                  div.modal_body {
                    text 'This is the modal body!'
                  }

                  div.modal_footer {
                    text 'This is the modal footer!'
                  }
                }
              }
            }
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
            table.stripes {
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

          script src: '//code.jquery.com/jquery-1.11.1.min.js'
          script src: '/js/dvl/core/modals.js'
          script src: '/js/dvl/core/dropdowns.js'
          script src: '/js/dvl/core/tooltips.js'
          script src: '/js/dvl/core/buttons.js'
          script %{
            $('[data-toggle="tooltip"]').tooltip()
          }.html_safe
        }
      }
    }.to_html
  end

  run! if app_file == $0
end
