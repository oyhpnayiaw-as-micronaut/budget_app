module ApplicationHelper
  def app_name
    'Daisy'
  end

  def title
    base_title = app_name

    # get the current controller name
    controller_name = controller.controller_name

    controller_name = 'Transactions' if controller_name == 'app_transactions'

    base_title = "#{controller_name.capitalize} | #{base_title}" unless controller_name == 'categories'

    base_title
  end

  def home?
    root_path == request.path
  end

  def simple_navbar?
    %w[users].include?(request.path.split('/')[1])
  end

  def splash_screen?
    %w[splash].include?(request.path.split('/')[1])
  end
end
