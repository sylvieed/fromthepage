class ScCanvas < ActiveRecord::Base
  belongs_to :sc_manifest
  belongs_to :page
end
