module ApplicationHelper
  def login_nav
    if @auth.present?
      #{ }"<script>$(document).ready(function () { $('#myModal1').modal();});</script>" and
      link_to(@auth.email, login_path, :method => :delete, :class => 'btn btn-danger')
    else
      # link_to('Login', login_path, :class => 'button success')
      "<script>$(document).ready(function () { $('#myModal').modal();});</script>"
    end
  end
end
