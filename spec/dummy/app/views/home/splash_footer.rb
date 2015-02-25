class Views::Home::SplashFooter < Views::Splash
  def main
    section.main_section.footer {
      div.grid {
        form.newsletter_form {
          p {
            strong 'Subscribe to our newsletter!'
            text " We'll email you around once a month with updates."
          }
          label 'Enter your email address', for: 'newsletter_email'
          input type: 'email', id: 'newsletter_email', placeholder: 'Enter your email address here', class: 'newsletter_email'
          input type: 'submit', value: 'Subscribe', class: 'button newsletter_subscribe'
        }

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
  end
end
