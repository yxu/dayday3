class Participation < ActiveRecord::Base
  # each participation involves a participant and an event and an inviter
  belongs_to :participant,
             :class_name => 'User',
             :foreign_key => 'participant_id'

  belongs_to :invitee,
             :class_name => 'User',
             :foreign_key => 'participant_id'

  belongs_to :refuser,
             :class_name => 'User',
             :foreign_key => 'participant_id'

  belongs_to :maybe_attender,
             :class_name => 'User',                                           
             :foreign_key => 'participant_id'

  belongs_to :must_attender,  
             :class_name => 'User',                                           
             :foreign_key => 'participant_id'

  belongs_to :requester, 
             :class_name => 'User',                                           
             :foreign_key => 'participant_id'

  belongs_to :event,
             :counter_cache => true

  belongs_to :inviter,
             :class_name => 'User',
             :foreign_key => 'inviter_id'
end
