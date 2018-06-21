# <% if authorized_action?("platforms", "index") %>


def authorize_link(controller, action, link_name, link_path)
<<-HTML

<% if authorized_action?(#{controller}, #{action}) %>
   <li class="<%= 'active' if params[:controller] == #{controller} %>">
     <%= link_to #{link_name}, #{link_path} %>
     <span class="sr-only">(current)</span>
   </li>
<% end %>

HTML
end
