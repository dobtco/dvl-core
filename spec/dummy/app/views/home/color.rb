class Views::Home::Color < Views::Page
  def main
    h2 'Color'

    guide '',
      %{<strong>Do</strong> supplement color with text and icons to differentiate data or call out a UI element.}.html_safe,
      '',
      %{<strong>Don&#39;t</strong> attempt to communicate something to users with only a change in color. This is inaccessible to color-blind users.}.html_safe


    h3 'Grayscale'

    grayscaleColors.each do |var, color|
      render('components/swatch', color: color, var: var)
    end

    hr

    guide %{<h3>Black</h3> <p style="color: #424242">Gray</p> <p style="font-size: 0.875rem; color: #737373">Grayer</p>}.html_safe,
      %{<strong>Do</strong> establish visual hierarchy with the <code>$black</code>, <code>$darkestGray</code> and <code>$darkerGray</code> color variables.}.html_safe,
      %{<p style="color: #bfbfbf;">This text is too light.</p>}.html_safe,
      %{<strong>Don&#39;t</strong> use lighter grayscale variables (like <code>$gray</code> or <code>$lightGray</code>) against white backgrounds. These will fail accessibility tests.}.html_safe

    h3 'UI Colors'

    p %{Each app should override <code>$primaryColor</code> and <code>$secondaryColor</code> with its primary brand colors.}.html_safe
    uiColors.each do |var, color|
      render('components/swatch', color: color, var: var)
    end

    hr

    h3 'Label Colors'
    p 'When building a feature that allows users to add labels to their data, use this color palette for the suggested presets.'

    labelColors.each do |var, color|
      render('components/swatch', color: color, var: var)
    end

    hr

    h3 'Qualitative Colors'
    p 'Use this color range to provide a value judgment (ranging from &ldquo;bad&rdquo; to &ldquo;good&rdquo;) on user-generated information.'.html_safe

    qualColors.each do |var, color|
      render('components/swatch', color: color, var: var)
    end

    hr
  end

  # Make sure everything below is equal to the variables in includes.scss
  def uiColors
    {
      '$primaryColor' => '#697182',
      '$secondaryColor' => '#f79a68',
      '$successColor' => '#5ee0ac',
      '$warningColor' => '#e3e15f',
      '$errorColor' =>  '#d95b76',
      '$highlight' => '#dff5f7'
    }
  end

  def grayscaleColors
    {
      '$black' => '#262626',
      '$darkestGray' => '#4d4d4d',
      '$darkerGray' => '#737373',
      '$darkGray' => '#bfbfbf',
      '$gray' => '#d9d9d9',
      '$lightGray' => '#e6e6e6',
      '$lighterGray' => '#f2f2f2',
      '$lightestGray' => '#fcfcfc',
      '$white' => '#fff'
    }
  end

  def qualColors
    {
      '$qualColor1' => '#D95B76',
      '$qualColor2' => '#E16D72',
      '$qualColor3' => '#EC846D',
      '$qualColor4' => '#F79A68',
      '$qualColor5' => '#EFB765',
      '$qualColor6' => '#E3E15F',
      '$qualColor7' => '#C2E172',
      '$qualColor8' => '#A1E085',
      '$qualColor9' => '#82E098',
      '$qualColor10' => '#5EE0AC'
    }
  end

  def labelColors
    {
      '$redLabelColor' => '#D95B76',
      '$lightRedLabelColor' => '#F0BECF',
      '$orangeLabelColor' => '#F79A68',
      '$lightOrangeLabelColor' => '#F0CCBE',
      '$yellowLabelColor' => '#E3E15F',
      '$lightYellowLabelColor' => '#FCF4C3',
      '$greenLabelColor' => '#5EE0AC',
      '$lightGreenLabelColor' => '#DBF4BF',
      '$blueLabelColor' => '#5BB7D9',
      '$lightBlueLabelColor' => '#BFEEF3',
      '$purpleLabelColor' => '#6569F0',
      '$lightPurpleLabelColor' => '#BEC9F0'
    }
  end

end
