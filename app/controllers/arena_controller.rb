class ArenaController < WebsocketRails::BaseController

  def init_battle
    user_id = message[:user_id]
    Arena::Processor.init_battle_for(user_id)
  end

  def exit_battle

  end

end