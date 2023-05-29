module ApplicationHelper
  def title
    base_title = 'dBudget'

    # get the current controller name
    controller_name = controller.controller_name

    base_title = "#{controller_name} | #{base_title}" unless controller_name == 'home'

    base_title
  end
end
