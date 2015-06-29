class Views::Home::Color < Views::Base
  def main
    h2 'Color'

    h3 'Grayscale'

    grayscaleColors.each do |var, color|
      render('components/swatch', color: color, var: var)
    end

    hr

    h3 'UI Colors'

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

  def uiColors
    {
      '$primaryColor' => '#5bb7d9',
      '$secondaryColor' => '#f79a68',
      '$successColor' => '#5ee0ac',
      '$warningColor' => '#e3e15f',
      '$errorColor' =>  '#d95b76',
      '$blueHighlight' => '#dff5f7'    
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