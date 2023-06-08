# frozen_string_literal: true

require_relative "../../../dummy/app/types/select_type"
require_relative "../../../dummy/app/types/multi_select_type"

ActiveModel::Type.register(:select, SelectType)
ActiveModel::Type.register(:multi_select, MultiSelectType)
