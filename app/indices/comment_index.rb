
ThinkingSphinx::Index.define :comment, :with => :active_record do
  indexes comment
  indexes user.username, :as => :author

  has "(cast(upvotes as unsigned) - cast(downvotes as unsigned))",
    :as => :score, :type => :bigint, :sortable => true

  has is_deleted
  has created_at

  where sanitize_sql(:is_deleted => false, :is_moderated => false)
end
