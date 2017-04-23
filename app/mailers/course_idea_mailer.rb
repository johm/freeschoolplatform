class CourseIdeaMailer < ApplicationMailer

 
  def send_idea_email(idea,site,admin)
    @idea=idea
    @site=site
      mail(to: admin.email, 
           subject: "New course idea for #{site.name} ",
           from: "no-reply@#{site.domain}")
  end
end
