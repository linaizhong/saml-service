class OrganizationName < LocalizedName
  many_to_one :organization

  def validate
    super
    validates_presence :organization
  end
end
