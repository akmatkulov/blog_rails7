module ApplicationHelper
  include Pagy::Frontend

  # Return full title
  def full_title(page_title = " ")
    base_title = "Blog"
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end

end
