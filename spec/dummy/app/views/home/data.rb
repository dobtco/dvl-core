class Views::Home::Data < Views::Base
  def main
    h2 'Data'
    
    h3 'Basic Tables'

    docs 'Default', %{
      table {
        thead {
          tr {
            th 'Name'
            th 'Type'
            th 'Last updated'
            th 'Status'

          }
        }
        tbody {
          tr {
            td {
              a 'Contest Submissions'
            }
            td 'DOCX'
            td '2 weeks ago'
            td 'Published'
          }
          tr {
            td {
              a 'TPS Reports'
            }
            td 'PDF'
            td '05/03/2013'
            td 'Approved'
          }
          tr {
            td {
              a 'U.N. Budget Proposal'
            }
            td 'PDF'
            td '1 month ago'
            td 'Published'
          }
          tr {
            td {
              a 'Zimbabwe Briefing'
            }
            td 'PDF'
            td 'Yesterday'
            td 'Rejected'
          }
        }
      }
    }, sub: ''

    docs 'Condensed', %{
      table.condensed {
        thead {
          tr {
            th 'Name'
            th 'Sender'
            th 'Recipients'
            th 'Opens'
            th 'Replies'
          }
        }
        tbody {
          tr {
            td {
              a 'New vlog'
            }
            td 'Max Ophuls'
            td '130'
            td '74%'
            td '63%'
          }
          tr {
            td {
              a 'Open casting call'
            }
            td 'Max Ophuls'
            td '1,150'
            td '80%'
            td '25%'
          }
          tr {
            td {
              a 'Outreach / Marketing'
            }
            td 'Max Ophuls'
            td '2000'
            td '10%'
            td '2%'
          }
          tr {
            td {
              a 'Partnership with Vessel'
            }
            td 'Max Ophuls'
            td '6'
            td '66%'
            td '16%'
          }
          tr {
            td {
              a 'Studio request'
            }
            td 'Max Ophuls'
            td '48'
            td '9%'
            td '5%'
          }
          tr {
            td {
              a 'Vlog follow-up'
            }
            td 'Max Ophuls'
            td '82'
            td '30%'
            td '15%'
          }
        }
      }
    }, hint: %{Add the <code>.condensed</code> class when the table is likely to take up many rows of the same page.}.html_safe, sub: ''
  
    hr
  
    docs 'Labels', %{
      p {
        span.label.label_error 'Error'
      }
      p {
        span.label.label_success 'Success'
      }
      p {
        span.label.label_info 'Info'
      }
      p {
        span.label.label_warning 'Warning'
      }
    } 

    docs 'Sidebar (Data List)', %{
      div.sidebar_box {
        ul.sidebar_data {
          li {
            div.sidebar_data_icon {
              i(class: 'fa fa-pencil')
            }
            div.sidebar_data_text {
              div.sidebar_data_label 'Assigned to'
              div.sidebar_data_value 'Jean-Luc Godard'
              div.sidebar_data_details {
                a 'Reassign?'
              }
            }
          }
          li {
            div.sidebar_data_icon {
              i(class: 'fa fa-folder')
            }
            div.sidebar_data_text {
              div.sidebar_data_label 'Status'
              div.sidebar_data_value {
                simple_form_for :native_select do |f|
                  f.input_field :blah, as: :select, collection: ['Open', 'Pending', 'Rejected'], selected: 'Option 1', 'data-width' => '100%'
                end
              }
            }
          }
          li {
            div.sidebar_data_icon {
              i(class: 'fa fa-clock-o')
            }
            div.sidebar_data_text {
              div.sidebar_data_label 'Revision History'
              div.sidebar_data_value {
                simple_form_for :foo do |f|
                  f.input_field :blah, as: :dropdown_select, collection: [['Edited 06/26/15 at 10:28pm', true, 'by Jean-Luc Godard'], ['Edited 06/23/15 at 05:59am', true, 'by Jean-Pierre Melville'], ['Edited 04/15/15 at 01:15pm', true, 'by Jean Cocteau']], selected: 'Edited 06/26/15 at 10:28pm', 'data-width' => '100%'
                end
              }
            }
          }
        }
      }
      ul.sidebar_sub_actions {
        li {
          a 'Grant permission to edit'
        }
        li {
          a 'Export'
        }
        li {
          a 'Archive'
        }
      }
    }, hint: 'Use this sidebar to display metadata and secondary actions related to the main content.'
  end
end
