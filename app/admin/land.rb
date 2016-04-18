ActiveAdmin.register Land do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :number, :surface, :address, :latitude, :longitude, :file, :neighborhood_id, :city_id, :citysearch_id
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end


end

#create_table "lands", force: :cascade do |t|
#    t.string   "number"
#    t.integer  "surface"
#    t.string   "address"
#    t.float    "latitude"
#    t.float    "longitude"
#    t.string   "file"
#    t.datetime "created_at",      null: false
#    t.datetime "updated_at",      null: false
#    t.integer  "neighborhood_id"
#    t.integer  "city_id"
#    t.integer  "citysearch_id"
#  end
