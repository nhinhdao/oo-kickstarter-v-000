require'pry'
class Backer
    attr_accessor :name, :backers
    @@backed_projects = []
    def initialize(name)
        @name = name
        # @@back_project << self
    end

    # def backers=(backer)
    #     @backers = backer
    # end

    def back_project(project)
        # binding.pry
        @@backed_projects << project
        project.add_backer(self)
    end

    def backed_projects
        @@backed_projects
    end
end
