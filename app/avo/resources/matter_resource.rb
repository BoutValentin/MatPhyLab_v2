class MatterResource < Avo::BaseResource
  self.title = :title
  self.includes = []
  self.default_view_type = :grid

  grid do
    cover :illustration, as: :file, link_to_resource: true
    title :title, as: :text, required: true, link_to_resource:true
  end
  # self.search_query = ->(params:) do
  #   scope.ransack(id_eq: params[:q], m: "or").result(distinct: false)
  # end

  field :id, as: :id
  # add fields here

  field :title, as: :text, required: true
  field :illustration, as: :file, is_image: true, link_to_resource: true
end
