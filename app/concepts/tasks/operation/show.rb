class Tasks::Operation::Show < Trailblazer::Operation
  step :find_model

  def find_model(ctx, params:, current_user:, **)
    ctx[:model] = current_user.tasks.find_by(id: params[:id])
  end
end
