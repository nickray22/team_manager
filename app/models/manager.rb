class Manager < User
  belongs_to :team
  belongs_to :user

  def as_json(opts={})
    options = { :only => [:id, :name] }
    options.merge!(opts)
    super(options)
  end

end
