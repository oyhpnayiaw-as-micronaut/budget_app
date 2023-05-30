module ApplicationHelper
  def title
    base_title = 'Daisy'

    # get the current controller name
    controller_name = controller.controller_name

    base_title = "#{controller_name.capitalize} | #{base_title}" unless controller_name == 'categories'

    base_title
  end

  def home?
    root_path == request.path
  end
end
