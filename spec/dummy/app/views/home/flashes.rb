class Views::Home::Flashes < Views::Base
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
