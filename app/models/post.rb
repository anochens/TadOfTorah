
class Post

  include Mongoid::Document





  field :title, type: String

  field :content, type: String

  field :author, type: String

  field :created_at, type: Time

  field :updated_at, type: Time

  field :ref_source, type: String

  validates_presence_of :title,:content,:author

  embeds_many :comments


  def clean_title

		title || "Untitled"
   end


end

