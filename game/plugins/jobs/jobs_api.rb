module AresMUSH
  module Jobs
    module Api
      def self.create_job(category, title, description, author)
        Jobs.create_job(category, title, description, author)
      end
    
      def self.change_job_status(enactor, job, status, message = nil)
        Jobs.change_job_status(enactor, job, status, message)
      end
    
      def self.close_job(enactor, job, message = nil)
        Jobs.change_job_status(enactor, job, Jobs.closed_status, message)
      end
    
      def self.has_unread_jobs?(char)
        char.has_unread_jobs?
      end
  
      def self.has_unread_requests?(char)
        char.has_unread_requests?
      end
    end
  end
end