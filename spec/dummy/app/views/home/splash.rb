class Views::Home::Splash < Views::Page
  def stylesheets
    super
    stylesheet_link_tag 'splash', media: 'all'
  end

  def main
    h2 'Splash Pages'

    docs 'Footer', %{
      footer.public_footer {
        div.container {
          form.newsletter_form.grid {
            p.item {
              strong 'Subscribe to our newsletter!'
              text " We'll email you around once a month with updates."
            }
            div.item.lap_eight_columns {
              label 'Enter your email address', for: 'newsletter_email'
              input type: 'email', id: 'newsletter_email', placeholder: 'Enter your email address here', class: 'newsletter_email'
            }
            div.item.lap_four_columns {
              input type: 'submit', value: 'Subscribe', class: 'button newsletter_subscribe'
            }
          }

          div.grid {
            div.item.lap_six_columns {
              ul.public_footer_links {
                li {
                  a 'Blog', href: 'http://blog.dobt.co'
                }
                li.public_footer_status {
                  a 'Status Board', href: 'http://status.dobt.co'
                }
                li {
                  a 'Terms of Service', href: 'http://www.dobt.co/terms/'
                }
                li {
                  a 'Privacy Policy', href: 'http://www.dobt.co/privacy/'
                }
                li {
                  a 'Customer Dashboard', href: 'https://dashboard.dobt.co'
                }
              }
            }
            div.item.lap_six_columns {
              ul.public_footer_contact {
                li.public_footer_phone {
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
                li.public_footer_email {
                  a.dynamic_email
                }
                li.public_footer_fb {
                  a 'Facebook', href: 'https://www.facebook.com/dobtco'
                }
                li.public_footer_gplus {
                  a 'Google&#43;'.html_safe, href: 'https://plus.google.com/+DobtCo'
                }
                li.public_footer_twitter {
                  a 'Twitter', href: 'https://www.twitter.com/dobtco'
                }
              }
            }
          }
        }
      }
    }, full: true
  end
end
