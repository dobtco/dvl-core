class Views::Home::Icons < Views::Page
  def main
    h2 'Icons'

    h3 'All icons'

    ul(class: "docs_icons grid") {
      icon_classes.each do |x|
        li(class: 'item lap_six_columns desk_three_columns') {
          span {
            text icon(x)
          }
          em x
        }
      end
    }
  end

  def icon_classes
    @icon_classes ||= begin
      files = Dir[
        Gem.loaded_specs['dvl-icons'].full_gem_path +
        '/src/icons/*.svg'
      ]

      files.map do |fp|
        fp.match(/src\/icons\/(\w+)\.svg$/)[1]
      end
    end
  end
end
