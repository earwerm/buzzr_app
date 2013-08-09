module ApplicationHelper
  def login_nav
    if @auth.present?
      link_to(@auth.email, login_path, :method => :delete, :class => 'btn btn-danger')
    else
      "<script>$(document).ready(function () { $('#myModal').modal();});</script>"
    end
  end
end
