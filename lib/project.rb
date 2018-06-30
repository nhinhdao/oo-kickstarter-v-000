require'pry'
class Project
    attr_accessor :title, :backed_projects
    @@backers = []
    def initialize(title)
        @title = title
        # @@backer << self
    end

    def add_backer(backer)
        # binding.pry
        @@backers << backer
        backer.backed_projects << self
    end

    def backers
        @@backers
    end
end
