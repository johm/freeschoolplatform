class CourseProposalMailer < ApplicationMailer

 
  def send_proposal_email(proposal,site,admin)
    @course_proposal=proposal
    @site=site
      mail(to: admin.email, 
           subject: "New course proposal for #{site.name}: #{@course_proposal.title} ",
           from: "no-reply@#{site.domain}")
  end
end
