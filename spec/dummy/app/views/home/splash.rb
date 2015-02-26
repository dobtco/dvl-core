class Views::Home::Splash < Views::Base
  def stylesheets
    link href: '//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css', rel: 'stylesheet'
    link href: '//fonts.googleapis.com/css?family=Open+Sans:400,300,700,600', rel: 'stylesheet'
    link href: '//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css', rel: 'stylesheet'
    stylesheet_link_tag 'splash', media: 'all'
  end

  def main
    docs 'Splash', %{
      footer.footer {
        div.footer_inner {
          form.newsletter_form.grid.gutter_half {
            p.item {
              strong 'Subscribe to our newsletter!'
              text " We'll email you around once a month with updates."
            }
            div.item.lap_seven_columns {
              label 'Enter your email address', for: 'newsletter_email'
              input type: 'email', id: 'newsletter_email', placeholder: 'Enter your email address here', class: 'newsletter_email'
            }
            div.item.lap_five_columns {
              input type: 'submit', value: 'Subscribe', class: 'button newsletter_subscribe'
            }
          }

          div.grid {
            div.item.lap_six_columns {
              ul.footer_links {
                li {
                  a 'Blog', href: 'http://blog.dobt.co'
                }
                li.footer_status {
                  a 'Status Board', href: 'http://status.dobt.co'
                }
                li {
                  a 'Terms of Service', href: 'https://dashboard.dobt.co/terms'
                }
                li {
                  a 'Privacy Policy', href: 'https://dashboard.dobt.co/privacy'
                }
                li {
                  a 'Customer Dashboard', href: 'https://dashboard.dobt.co'
                }
              }
            }
            div.item.lap_six_columns {
              ul.footer_contact {
                li.footer_phone {
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
                li.footer_email {
                  a.dynamic_email
                }
                li.footer_fb {
                  a 'Facebook', href: 'https://www.facebook.com/dobtco'
                }
                li.footer_gplus {
                  a 'Google&#43;'.html_safe, href: 'https://plus.google.com/+DobtCo'
                }
                li.footer_twitter {
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
