# <% if authorized_action?("platforms", "index") %>


def authorize_link(controller, action, link)

  active = (params[:controller] == controller) ? " class='active' " : ""

  if authorized_action?(controller, action)
    condition =
<<-ERB
   <li#{active}>
     #{link}
     <span class="sr-only">(current)</span>
   </li>
ERB
    condition.html_safe
  else
    ""
  end
end
