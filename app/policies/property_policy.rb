class PropertyPolicy
  attr_reader :user, :record

  def initialize(user, record)
    @user = user
    @property = record
  end

  def my_properties?
    user.has_role? :host
  end

  def index?
    true
  end

  def show?
    true
  end

  def create?
    user.has_role?(:host)
  end

  def new?
    create?
  end

  def update?
    # only the owner of this @property can update or edit
    # user.has_role?(:host) && user.properties.find(@property.id) # throw error if none founnd
    user.properties.find_by(id: @property.id) # return nil if none found
  end

  def edit?
    update?
  end

  def destroy?
    create?
  end

  class Scope
    def initialize(user, scope)
      @user = user
      @scope = scope
    end

    def resolve
      scope.all
    end

    private

    attr_reader :user, :scope
  end
end
