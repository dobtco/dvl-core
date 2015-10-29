class Views::Home::Icons < Views::Page
  def main
    h2 'Icons'

    ul {
      icon_classes.each do |x|
        li {
          i(class: "icon #{x}")
          text ' '
          text x
        }
      end
    }
  end

  def icon_classes
    @icon_classes ||= begin
      raw_css = File.read(
        Gem.loaded_specs['dvl-icons'].full_gem_path +
        '/app/assets/stylesheets/dvl-icons.scss'
      )

      raw_css.scan(/\.(icon_[a-z0-9\-]+)\:before/).flatten
    end
  end
end
