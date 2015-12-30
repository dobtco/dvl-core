class Views::Home::Splash < Views::Page
  def stylesheets
    super
    stylesheet_link_tag 'splash', media: 'all'
  end

  def main
    h2 'Splash Pages'

    docs 'Footer', %{
      footer(class: 'public_footer') {
        div(class: 'container') {
          form(class: 'newsletter_form grid') {
            p(class: 'item') {
              strong 'Subscribe to our newsletter!'
              text " We'll email you around once a month with updates."
            }
            div(class: 'item lap_eight_columns') {
              label 'Enter your email address', for: 'newsletter_email'
              input type: 'email', id: 'newsletter_email', placeholder: 'Enter your email address here', class: 'newsletter_email'
            }
            div(class: 'item lap_four_columns') {
              input type: 'submit', value: 'Subscribe', class: 'button newsletter_subscribe'
            }
          }

          div(class: 'grid') {
            div(class: 'item lap_six_columns') {
              ul(class: 'public_footer_links') {
                li {
                  a 'Blog', href: 'http://blog.dobt.co'
                }
                li(class: 'public_footer_status') {
                  a 'Status Board', href: 'http://status.dobt.co'
                }
                li {
                  a 'Terms of Service', href: 'https://www.dobt.co/terms/'
                }
                li {
                  a 'Privacy Policy', href: 'https://www.dobt.co/privacy/'
                }
                li {
                  a 'Customer Dashboard', href: 'https://dashboard.dobt.co'
                }
              }
            }
            div(class: 'item lap_six_columns') {
              ul(class: 'public_footer_contact') {
                li(class: 'public_footer_phone') {
                  dl {
                    dt 'Toll-Free'
                    dd {
                      a '+1 (877) 294-DOBT', href: 'tel:+18772943628'
                    }
                  }
                  dl {
                    dt 'Local'
                    dd {
                      a '+1 (404) 975-1962', href: 'tel:+14049751962'
                    }
                  }
                }
                li(class: 'public_footer_email') {
                  a(class: 'dynamic_email')
                }
                li(class: 'public_footer_fb') {
                  a 'Facebook', href: 'https://www.facebook.com/dobtco'
                }
                li(class: 'public_footer_gplus') {
                  a 'Google&#43;'.html_safe, href: 'https://plus.google.com/+DobtCo'
                }
                li(class: 'public_footer_twitter') {
                  a 'Twitter', href: 'https://www.twitter.com/dobtco'
                }
              }
            }
          }
        }
      }
    }
  end
end
