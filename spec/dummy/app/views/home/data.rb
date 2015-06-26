class Views::Home::Data < Views::Base
  def main
    h2 'Data'
    
    docs 'Basic Tables', %{
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
    }
  end
end
