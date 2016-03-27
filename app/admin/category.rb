ActiveAdmin.register Category do

  permit_params :name, :description, :position, :image

  config.sort_order = 'position_asc'
  config.paginate   = false

  sortable

  index do
    sortable_handle_column
    column :name
    actions
  end

end