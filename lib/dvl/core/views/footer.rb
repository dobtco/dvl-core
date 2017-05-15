class Dvl::Core::Views::Footer < Dvl::Core::Views.base_view_class.constantize
  needs :application_name,
        append: nil,
        prepend_links: nil,
        append_links: nil,
        hrefs: {
          status: 'http://status.dobt.co',
          legal: 'https://www.dobt.co/terms/',
          help: 'http://help.dobt.co',
          contact: 'mailto:support@dobt.co',
        }

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

          if @hrefs[:status].present?
            li { a t('dvl_core.footer.status'),  href: @hrefs[:status] , target: '_blank' }
          end

          if @hrefs[:legal].present?
            li { a t('dvl_core.footer.legal'),   href: @hrefs[:legal], target: '_blank' }
          end

          if @hrefs[:help].present?
            li { a t('dvl_core.footer.help'),    href: @hrefs[:help], target: '_blank' }
          end

          if @hrefs[:contact].present?
            li { a t('dvl_core.footer.contact'), href: @hrefs[:contact] }
          end

          @append_links.call if @append_links
        }
      }

      @append.call if @append
    }
  end
end
