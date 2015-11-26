class ReclaInstitucion < ActiveRecord::Base
  belongs_to :recla
  belongs_to :institucion
end
