class JawboneAccount < ApplicationRecord
  belonts_to :user, optional: true
end
