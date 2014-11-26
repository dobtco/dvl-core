class Dvl::Components::Footer < Erector::Widget
  needs :application_name

  def content
    footer.footer {
      div.footer_inner {
        span {
          text @application_name
          rawtext t('dvl_core.footer.about')
        }

        ul {
          li { a t('dvl_core.footer.status'), href: 'http://status.dobt.co', target: '_blank' }
          li { a t('dvl_core.footer.legal'), href: 'https://dashboard.dobt.co/terms', target: '_blank' }
          li { a t('dvl_core.footer.help'), href: 'http://help.dobt.co', target: '_blank' }
          li { a t('dvl_core.footer.contact'), href: 'mailto:support@dobt.co' }
        }
      }
    }
  end
end
