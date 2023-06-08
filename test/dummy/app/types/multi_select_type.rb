# frozen_string_literal: true

class MultiSelectType < ActiveModel::Type::Value
  LIST = Struct.new(:initial, :values, :description, keyword_init: true)

  def cast(value)
    sanitized = sanitize_input(value)
    LIST.new(sanitized)
  end

  private

  def sanitize_input(input)
    input.slice(:initial, :values, :description)
  end
end
