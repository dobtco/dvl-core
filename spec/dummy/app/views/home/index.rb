class Views::Home::Index < Views::Home
  def main
    h2 'Base Styles'


    h3 'Sizes and Spacing'

    p %{Our typographical <em>vertical rhythm</em> is 8px. We use a multiple of that number (24px) to set the line height of our text.}.html_safe

    div(class: 'docs_rhythm') {
      h2 'The Department of Better Technology'
      p 'We help governments deliver great digital services to the people who depend on them.'
      form {
        input(type: 'text', placeholder: 'Enter your email address', 'aria-label' => 'Email')
        button 'Subscribe', class: 'button info'
      }
    }

    p %{Always use the <code>$rhythm</code> or <code>$lineHeight</code> variables to set dimensions and spacing for UI elements.}.html_safe

    hr

    guide '',
      %{<strong>Do</strong> use multiples of <code>$rhythm</code> and <code>$lineHeight</code> to specify the dimensions and padding of an item.}.html_safe,
      '',
      %{<strong>Don&#39;t</strong> use <code>px</code>, <code>em</code> or <code>rem</code> units to specify spacing or sizes.}.html_safe

    guide '',
      %{<strong>Do</strong> multiply the vertical rhythm by whole numbers when styling the dimensions of new UI elements.}.html_safe,
      '',
      %{<strong>Don&#39;t</strong> divide <code>$rhythm</code> or <code>$lineHeight</code> into fractions, unless you are vertically centering text within its container.}.html_safe

    docs 'Headings', %{
      div(class: 'dvlcore_headings') {
        h1 'Heading 1 56/80px'
        h2 'Heading 2 36/56px'
        h3 'Heading 3 23/32px'
        h4 'Heading 4 16/24px'
        h5 'Heading 5 13/24px'
      }
    }

    docs 'Paragraph-Level Text', %{
      p 'Our default text styles are 16/24px. You should be styling most text with this default.'.html_safe

      blockquote 'Use blockquotes in blog posts, support documentation, and other prose writing when quoting another source. They are usually unnecessary in interface design.'

      p %{Text with inline code, or developer-oriented data like API keys, should be wrapped in a <code>&lt;code&gt;</code> tag.}.html_safe

      pre %{## Code which wraps to multiple lines should be
## placed in a <pre> tag.}

      p %{Use the <code>&lt;sub&gt;</code> and <code>&lt;sup&gt;</code> tags to style superscript and subscript text. For example: &ldquo;The 8<sup>th</sup> molecule of H<sub>2</sub>O.&rdquo;}.html_safe

      p %{<del>Redacted text</del> should be styled with <code>&lt;del&gt;</code> tags.}.html_safe
    }
    h3 'Small Text Sizes'

    p %{<code>$fontSmall</code>: Small text should be used for displaying tertiary information.}.html_safe, class: 'docs_fontsmall'
    p %{<code>$fontSmaller</code>: Smaller text is great for explaining primary and secondary actions.}.html_safe, class: 'docs_fontsmaller'
    p %{<code>$fontSmallest</code>: Use the smallest text size sparingly.}.html_safe, class: 'docs_fontsmallest'

    hr

    guide %{<p class="docs_fontsmaller">To enable electronic signatures for your project, click &ldquo;Edit project&rdquo; and select &ldquo;Responses&rdquo; from the Project Checklist. Then, check the &ldquo;Require signatures for responses&rdquo; box under &ldquo;Data collection.&rdquo;</p>}.html_safe,
      %{<strong>Do</strong> use multiple lines of smaller text to provide UI microcopy or tertiary information.}.html_safe,
      %{<h2>What happens if a respondent makes changes?</h2>}.html_safe,
      %{<strong>Don&#39;t</strong> use multiple lines of larger text. Either use the default font size, or truncate a single line of larger text with ellipses.}.html_safe

    guide %{<h2>Headline</h2> <p>Main Content</p> <div class="microcopy">Explanation</div>}.html_safe,
      %{<strong>Do</strong> use header styles, smaller text sizes, and <a href="/components#alerts">alerts</a> to establish hierarchy and call out bits of text.}.html_safe,
      %{<p><strong>We help governments deliver great digital services to the people who depend on them.</strong></p> <p class="microcopy" style="background-color: red;">Explanation goes here.</p>}.html_safe,
      %{<strong>Don&#39;t</strong> use boldface text for long sentences, or color the text to emphasize an action. This negatively impacts legibility.}.html_safe

    docs 'Lists', %{
      ul(class: 'formatted_list') {
        li 'Item 1'
        li 'Item 2'
        li 'Item 3'
        li 'Item 4'
        li 'Item 5'
        li 'Item 6'
        li 'Item 7'
      }

      ol(class: 'formatted_list') {
        li 'Item 1'
        li 'Item 2'
        li 'Item 3'
        li 'Item 4'
        li 'Item 5'
        li 'Item 6'
        li 'Item 7'
      }
    }, hint: %{By default, lists are unstyled. Use the <code>.formatted_list</code> class to create bulleted and numbered lists.}.html_safe

    docs 'Definition Lists', %{
      dl {
        dt 'Name'
        dd 'Barack Obama'
        dt 'Email Address'
        dd 'barack.obama@whitehouse.gov'
      }
    }, hint: 'Use definition lists to format labeled lists and metadata, like the contents of a form submissions or the sender information in an email.'

    docs 'Images and Captions', %{
      figure {
        img(src: 'http://i.imgur.com/lAaFALg.jpg', alt: 'DOBT team photo')
        text %{<figcaption class='formatted'>Did we mention we're hiring?</figcaption>}.html_safe
      }
    }

    h3 'Links'

    docs 'Default', %{
      p %{DOBT believes in the power of open data. It encourages transparency in government, and sometimes, <a href="https://www.youtube.com/watch?v=dQw4w9WgXcQ">it even saves lives</a>.}.html_safe
    }, sub: true

    docs 'Button links', %{
      p {
        button('Example', class: 'button_link')
      }
    }, hint: %{Add the <code>.button_link</code> class to any <code>&lt;button&gt;</code> tag to make it appear like a link.}.html_safe, sub: true

  end
end
