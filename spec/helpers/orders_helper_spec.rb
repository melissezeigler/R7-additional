require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the OrdersHelper. For example:
#
# describe OrdersHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
# RSpec.describe OrdersHelper, type: :helper do
#   pending "add some examples to (or delete) #{__FILE__}"
# end


require 'rails_helper'

RSpec.describe OrdersHelper, type: :helper do
  describe "#format_order_date" do
    it "formats the date as 'Month Day, Year'" do
      date = Date.new(2024, 9, 1)
      expect(helper.format_order_date(date)).to eq("September 01, 2024")
    end
  end
end
