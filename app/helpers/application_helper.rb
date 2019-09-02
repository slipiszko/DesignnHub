module ApplicationHelper
  def homepage?
    current_page?(root_path)
  end
end
