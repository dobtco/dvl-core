class Views::Components::Swatch < Erector::Widget
  needs :color,
        :var

  def content
    div.swatch {
      div(style: "background-color: #{@color}")
      span "#{@var}"
    }
  end
end
