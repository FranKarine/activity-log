module ApplicationHelper
  def delete_link(resource)
    "<a href='#{send("#{resource.class.to_s.underscore}_path", resource)}' data-method='delete' data-confirm='#{t('link_opts.delete.confirm')}' class='table-link danger'><span class='glyphicon glyphicon-remove'></span></a>".html_safe
  end

  def edit_link(resource)
    "<a href='#{send("edit_#{resource.class.to_s.underscore}_path", resource)}' class='table-link'><span class='glyphicon glyphicon-edit'></span></a>".html_safe
  end

  def show_link(resource)
    "<a href='#{send("#{resource.class.to_s.underscore}_path", resource)}' class='table-link'><span class='glyphicon glyphicon-search'></span></a>".html_safe
  end

  def default_action_links(resource)
    ret  = "<div class='default-links'>"
    ret += show_link(resource)
    ret += edit_link(resource)
    ret += delete_link(resource)
    ret += "</div>"

    ret.html_safe
  end
end
