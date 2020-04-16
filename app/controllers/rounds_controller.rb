class RoundsController < ApplicationController
  before_action :set_round, only: [:show, :edit, :update, :destroy]

  # GET /rounds
  # GET /rounds.json
  def index
    @rounds = Round.all
  end

  # GET /rounds/1
  # GET /rounds/1.json
  def show
  end

  # GET /rounds/new
  def new
    @round = Round.new
  end

  # GET /rounds/1/edit
  def edit
  end

  # POST /rounds
  # POST /rounds.json
  def create
    @round = Round.new(round_params)

    respond_to do |format|
      if @round.save
        format.html { redirect_to @round, notice: 'Round was successfully created.' }
        format.json { render :show, status: :created, location: @round }
      else
        format.html { render :new }
        format.json { render json: @round.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rounds/1
  # PATCH/PUT /rounds/1.json
  def update
    respond_to do |format|
      if @round.update(round_params)
        format.html { redirect_to @round, notice: 'Round was successfully updated.' }
        format.json { render :show, status: :ok, location: @round }
      else
        format.html { render :edit }
        format.json { render json: @round.errors, status: :unprocessable_entity }
      end
    end
  end


  # DELETE /rounds/1
  # DELETE /rounds/1.json
  def destroy
    @round.destroy
    respond_to do |format|
      format.html { redirect_to rounds_url, notice: 'Round was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_round
      @round = Round.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def round_params
      params.require(:round).permit(:round_number, :game_id, :dealer_id, :b_card, :pick_amount, :player_1, :player_2, :player_3, :player_4, :player_5, :player_6, :player_7, :player_8, :player_9, :player_10, :player_1_card_1, :player_1_card_2, :player_1_card_3, :player_2_card_1, :player_2_card_2, :player_2_card_3, :player_3_card_1, :player_3_card_2, :player_3_card_3, :player_4_card_1, :player_4_card_2, :player_4_card_3, :player_5_card_1, :player_5_card_2, :player_5_card_3, :player_6_card_1, :player_6_card_2, :player_6_card_3, :player_7_card_1, :player_7_card_2, :player_7_card_3, :player_8_card_1, :player_8_card_2, :player_8_card_3, :player_9_card_1, :player_9_card_2, :player_9_card_3, :player_10_card_1, :player_10_card_2, :player_10_card_3, :player_count, :win_card_1, :win_card_2, :win_card_3, :win_player)
    end
end
