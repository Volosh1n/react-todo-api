class Projects::Contract::Default < Reform::Form
  property :name
  property :user_id

  validates :name, length: { minimum: Constants::PROJECT_NAME_MIN_LENGTH, maximum: Constants::PROJECT_NAME_MAX_LENGTH },
                   presence: true
end
