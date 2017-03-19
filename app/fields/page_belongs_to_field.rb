require "administrate/field/base"

class PageBelongsToField < Administrate::Field::BelongsTo
  def to_s
    data
  end
end
