class Poll < ActiveRecord::Base

  belongs_to(
    :author,
    class_name: "User",
    primary_key: :id,
    foreign_key: :author_id
  )

  has_many(
    :questions,
    class_name: "Question",
    primary_key: :id,
    foreign_key: :poll_id
  )
end
