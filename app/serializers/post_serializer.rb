class PostSerializer < ActiveModel::Serializer
  attributes :title, :description, :edit

  def edit
    object.title[0,3]
  end
end
