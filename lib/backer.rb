class Backer
    attr_reader :name

    def initialize(name)
        @name = name 
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        project = ProjectBacker.all.select {|project_backer| project_backer.backer == self} 
        project.map {|project| project.project}
    end


end