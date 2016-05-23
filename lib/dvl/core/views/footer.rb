class Dvl::Core::Views::Footer < Dvl::Core::Views.base_view_class.constantize
  needs :application_name,
        append: nil

  def content
    footer(class: 'footer') {
      div(class: 'footer_inner') {
        div {
          if @application_name
            text @application_name
            rawtext t('dvl_core.footer.about')
          else
            rawtext t('dvl_core.footer.about_no_app')
          end
        }

        ul {
          li { a t('dvl_core.footer.status'), href: 'http://status.dobt.co', target: '_blank' }
          li { a t('dvl_core.footer.legal'), href: 'https://www.dobt.co/terms/', target: '_blank' }
          li { a t('dvl_core.footer.help'), href: 'http://help.dobt.co', target: '_blank' }
          li { a t('dvl_core.footer.contact'), href: 'mailto:support@dobt.co' }
        }
      }

      if @append
        @append.call
      end
    }
  end
end
