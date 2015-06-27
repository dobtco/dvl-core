class Views::Components::Swatch < Erector::Widget
  needs color: nil,
        var: nil

  def content
    div.swatch{
      div(style: "background-color: #{@color}")
      span "#{@var}"
    }
  end
end