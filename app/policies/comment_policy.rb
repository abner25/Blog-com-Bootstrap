class CommentPolicy < ApplicationPolicy
  def create?
    user&.id
  end

  # O mesmo usuário  = mesmo usuário do comentário
  def destroy?
    user&.id == record.user.id
  end
end
