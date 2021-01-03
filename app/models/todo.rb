class Todo < ApplicationRecord
    after_initialize :set_defaults

    def set_defaults 
        self.status ||= false
    end
end
