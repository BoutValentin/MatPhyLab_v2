class CourseResource < Avo::BaseResource
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
  field :grade, as: :belongs_to
  field :matter, as: :belongs_to

  field :skills, as: :key_value

  field :courses, as: :files
  field :exercices, as: :files
  field :m_res, as: :files


end
