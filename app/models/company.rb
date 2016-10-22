class Company < ApplicationRecord
  mount_uploader :logo, :LogoUploader
end
