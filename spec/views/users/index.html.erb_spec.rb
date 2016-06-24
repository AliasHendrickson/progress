# require 'rails_helper'

# RSpec.describe "users/index", type: :view do
#   before(:each) do
#     assign(:users, [
#       User.create!(
#         :email => "Email",
#         :crypted_password => "$2a$10$O6Ag3z/xm/kEfw7bfqMWdu3EH5nh.Ojz.Vo/nGycYOnXVKF.pdw/e",
#         :salt => "QeG5racjsPZvmQnKQEUG"
#       ),
#       User.create!(
#         :email => "Email",
#         :crypted_password => "$2a$10$O6Ag3z/xm/kEfw7bfqMWdu3EH5nh.Ojz.Vo/nGycYOnXVKF.pdw/e",
#         :salt => "QeG5racjsPZvmQnKQEUG"
#       )
#     ])
#   end

#   it "renders a list of users" do
#     render
#     assert_select "tr>td", :text => "Email".to_s, :count => 2
#   end
# end
