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
  end
end
