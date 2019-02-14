module ApplicationHelper
    def hide_cart_if(condition, attributes = {}, &block) 
        if condition
            attributes["style"] = "display:none"
        end
        content_tag("div", attributes, &block) 
    end
    def default_url_options
        { locale: I18n.locale }
    end
end
