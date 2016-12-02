class Dvl::Core::Views::Footer < Dvl::Core::Views.base_view_class.constantize
  needs :application_name,
        append: nil,
        prepend_links: nil,
        append_links: nil

  def content
    footer(class: 'footer') {
      div(class: 'footer_inner') {
        span {
          if @application_name
            text @application_name
            rawtext t('dvl_core.footer.about')
          else
            rawtext t('dvl_core.footer.about_no_app')
          end
        }

        ul {
          @prepend_links.call if @prepend_links
          li { a t('dvl_core.footer.status'), href: 'http://status.dobt.co', target: '_blank' }
          li { a t('dvl_core.footer.legal'), href: 'https://www.dobt.co/terms/', target: '_blank' }
          li { a t('dvl_core.footer.help'), href: 'http://help.dobt.co', target: '_blank' }
          li { a t('dvl_core.footer.contact'), href: 'mailto:support@dobt.co' }
          @append_links.call if @append_links
        }
      }


      @append.call if @append
    }
  end
end
