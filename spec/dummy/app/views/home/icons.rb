class Views::Home::Icons < Views::Page
  def main
    h2 'Icons'

    ul(class: "docs_icons") {
      icon_classes.each do |x|
        li {
          span { i(class: "icon #{x}")}
          em x
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

      raw_css.scan(/\.(icon_[a-z0-9_\-]+)\:before/).flatten
    end
  end
end
