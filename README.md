Rails app generated with [lewagon/rails-templates](https://github.com/lewagon/rails-templates), created by the [Le Wagon coding bootcamp](https://www.lewagon.com) team.


search bar of the category index

  <div class="current-location">
              <%= form_with url: categories_path, method: :get, class: "input-search d-flex l" do %>
                <%= text_field_tag :query,
                  params[:query],
                  class: "form-control",
                  placeholder: "📍 Lima"
                %>
                <%= submit_tag "Search", class: "btn button-essential" %>
              <% end %>
