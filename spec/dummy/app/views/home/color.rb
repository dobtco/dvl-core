class Views::Home::Color < Views::Page
  def main
    h2 'Color'

    h3 'Grayscale'

    grayscale_colors.each do |key|
      render('components/swatch', color: color_variables[key], var: "$#{key}")
    end

    hr

    guide 'do',
    %{
      <p><strong>Do</strong> establish visual hierarchy with the <code>$black</code>, <code>$darkestGray</code> and <code>$darkerGray</code> color variables.</p>
    }.html_safe,
    'dont',
    %{
      <p><strong>Don&#39;t</strong> use lighter grayscale variables (like <code>$gray</code> or <code>$lightGray</code>) against white backgrounds. These will fail accessibility tests.</p>
    }.html_safe,
    'hint' => "All DOBT applications should pass WCAG 2.0 Level AA contrast guidelines.
    If you&#39;re unsure whether a block of text has sufficient contrast
    against its background, you can use
    <a href='http://leaverou.github.io/contrast-ratio/'>Lea Verou's contrast ratio checker</a>
    to confirm.".html_safe

    h3 'UI Colors'

    p %{Each app should override <code>$primaryColor</code> and <code>$secondaryColor</code> with its primary brand colors.}.html_safe

    ui_colors.each do |key|
      render('components/swatch', color: color_variables[key], var: "$#{key}")
    end

    hr

    guide 'do',
    %{
      <p><strong>Do</strong> supplement color with text and icons to differentiate data or call out a UI element.</p>
    }.html_safe,
    'dont',
    %{
      <p><strong>Don&#39;t</strong> attempt to communicate something to users with only a change in color. This is inaccessible to color-blind users.</p>
    }.html_safe


    h3 'Label Colors'
    p 'When building a feature that allows users to add labels to their data, use this color palette for the suggested presets.'

    label_colors.each do |key|
      render('components/swatch', color: color_variables[key], var: "$#{key}")
    end

    hr

    h3 'Qualitative Colors'
    p 'Use this color range to provide a value judgment (ranging from &ldquo;bad&rdquo; to &ldquo;good&rdquo;) on user-generated information.'.html_safe

    qual_colors.each do |key|
      render('components/swatch', color: color_variables[key], var: "$#{key}")
    end

    hr
  end

  def ui_colors
    %w(
      primaryColor
      secondaryColor
      successColor
      warningColor
      errorColor
      highlight
    )
  end

  def grayscale_colors
    %w(
      black
      darkestGray
      darkerGray
      darkGray
      gray
      lightGray
      lighterGray
      lightestGray
      white
    )
  end

  def qual_colors
    %w(
      qualColor1
      qualColor2
      qualColor3
      qualColor4
      qualColor5
      qualColor6
      qualColor7
      qualColor8
      qualColor9
      qualColor10
    )
  end

  def label_colors
    %w(
      redLabelColor
      lightRedLabelColor
      orangeLabelColor
      lightOrangeLabelColor
      yellowLabelColor
      lightYellowLabelColor
      greenLabelColor
      lightGreenLabelColor
      blueLabelColor
      lightBlueLabelColor
      purpleLabelColor
      lightPurpleLabelColor
    )
  end

  def color_variables
    @color_variables ||= begin
      engine = Sass::Engine.for_file(
        Rails.root.join("../../vendor/assets/stylesheets/dvl/core/includes.scss"),
        syntax: :scss
      )

      SassVariableEvaluator.visit(engine.to_tree).compact.inject({}) do |hash, arr|
        if arr.is_a?(Array) && arr.length == 2
          hash[arr[0]] = arr[1].inspect
        end

        hash
      end
    end
  end
end
