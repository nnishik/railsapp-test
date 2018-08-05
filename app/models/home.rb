class Home < ActiveRecord::Base
  self.table_name = "Users"


  def self.search(search_id, search_name,search_from,search_to)


    where('id = ? OR name = ? OR (birthday BETWEEN ? AND ?)',
          search_id,search_name,search_from,search_to)
  end



  # def self.search(search_id, search_name,search_from,search_to)
  #   us = Home.order(:id)
  #   us = us.where("id = ?", search_id) if search_id.present?
  #   us = us.where("name = ?", search_name) if search_name.present?
  #   us = us.where("birthday >= ?", search_from) if search_from.present?
  #   us = us.where("birthday <= ?", search_to) if search_to.present?
  #   us
  # end


#   def self.search(search_id, search_name,search_from,search_to)
#     @s ||= find_user
#   end
#
# private
#
#   def find_products
#     products = Product.order(:name) # selecl all from DB fisrt, then do the filter below
#     products = products.where("name like ?", "%#{keywords}%") if keywords.present?
#     products = products.where(category_id: category_id) if category_id.present?
#     products = products.where("price >= ?", min_price) if min_price.present?
#     products = products.where("price <= ?", max_price) if max_price.present?
#     products # return
#   end


end
