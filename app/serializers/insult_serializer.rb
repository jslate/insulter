class InsultSerializer < ActiveModel::Serializer
  attributes :id, :name, :adjective, :noun, :smell_like, :up_thumbs, :down_thumbs, :up_thumb_path, :down_thumb_path

  def down_thumb_path
    down_thumb_insult_path(object)
  end

  def up_thumb_path
    up_thumb_insult_path(object)
  end

end