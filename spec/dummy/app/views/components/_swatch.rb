class Views::Components::Swatch < Views::Base
  needs :color,
        :var

  def content
    div(class: 'swatch') {
      div(style: "background-color: #{@color}")
      span "#{@var}"
    }
  end
end
