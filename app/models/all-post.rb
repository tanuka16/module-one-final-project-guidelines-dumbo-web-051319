class AllPost
  def self.name
    Account.find_by(id: 1).name
  end

  def self.post
    Account.find_by(id: 1).posts[0].account_id
  end

  def self.post
    Account.find_by(id: 1).posts[0].content
  end

end
