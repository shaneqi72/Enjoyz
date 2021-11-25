class BookingPolicy
  attr_reader :user, :record

  def initialize(user, record)
    @user = user
    @booking = record
  end

  def index?
    true
  end

  def approve?
    return true if @user == @booking.property.owner
  end

  def deny?
    return true if @user == @booking.property.owner
  end

  def show?
    true
  end

  def create?
    user.has_any_role?(:user, :host)
  end

  def new?
    create?
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
