class Views::Home::Index < Views::Base
  def main
    h2 'Base Styles'

    docs 'Headings', %{
      h1 'Heading 1 64/80px'
      h2 'Heading 2 40/56px'
      h3 'Heading 3 23/32px'
      h4 'Heading 4 16/24px'
      h5 'Heading 5 13/24px'
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

    docs 'Lists', %{

      p %{By default, lists are unstyled. Use the <code>.formatted_list</code> class to create bulleted and numbered lists.}.html_safe

      ul.formatted_list {
        li 'Item 1'
        li 'Item 2'
        li 'Item 3'
        li 'Item 4'
        li 'Item 5'
        li 'Item 6'
        li 'Item 7'
      }

      ol.formatted_list {
        li 'Item 1'
        li 'Item 2'
        li 'Item 3'
        li 'Item 4'
        li 'Item 5'
        li 'Item 6'
        li 'Item 7'
      }
    }

    docs 'Definition Lists', %{
      p 'Use definition lists to format labeled lists and metadata, like the contents of a form submissions or the sender information in an email.'
      dl {
        dt 'Name'
        dd 'Barack Obama'
        dt 'Email Address'
        dd 'barack.obama@whitehouse.gov'
      }
    }

    docs 'Figures', %{
      p %{<figure><img src="http://i.imgur.com/lAaFALg.jpg" alt="DOBT team photo"><figcaption>Did we mention we're hiring?</figcaption></figure>}.html_safe
    }

    docs 'Links', %{
      p %{DOBT believes in the power of open data. It encourages transparency in government, and sometimes, <a href="https://www.youtube.com/watch?v=dQw4w9WgXcQ">it even saves lives</a>.}.html_safe
      p %{Add the <code>.uppercase</code> class to any link to downplay a tertiary action. For example:}.html_safe
      a.uppercase 'Contact Your Local Representative'
    }

  end
end
