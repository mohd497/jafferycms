class CustomersController < ApplicationController
  before_action :set_customer, only: [:show, :edit, :update, :destroy]

  # GET /customers
  # GET /customers.json

  def new_user
    @user = Useradmin.new
  end

  def create_user
    @user = Useradmin.new(user_params)
    if @user.save
      redirect_to customers_path, notice: 'User was successfully created.'
    else
      render :new_user
    end
  end

  def index
    if session[:admin] == "accepted"
      @level = session[:level]
      @customers = Customer.all
    else
      redirect_to root_path
    end
  end

  def search
    @q = Customer.search(params[:q])

  end

  def result
    @q = Customer.search(params[:q])
    @q = @q.result(distinct: true)
  end

  # GET /customers/1
  # GET /customers/1.json
  def show
    if session[:admin] == "accepted"

    else
      redirect_to root_path
    end
  end

  # GET /customers/new
  def new
    if session[:admin] == "accepted"
      @customer = Customer.new
    else
      redirect_to root_path
    end
  end

  # GET /customers/1/edit
  def edit
  end

  # POST /customers
  # POST /customers.json
  def create
    @customer = Customer.new(customer_params)

    respond_to do |format|
      if @customer.save
        format.html { redirect_to @customer, notice: 'Customer was successfully created.' }
        format.json { render :show, status: :created, location: @customer }
      else
        format.html { render :new }
        format.json { render json: @customer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /customers/1
  # PATCH/PUT /customers/1.json
  def update
    respond_to do |format|
      if @customer.update(customer_params)
        format.html { redirect_to @customer, notice: 'Customer was successfully updated.' }
        format.json { render :show, status: :ok, location: @customer }
      else
        format.html { render :edit }
        format.json { render json: @customer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customers/1
  # DELETE /customers/1.json
  def destroy
    @customer.destroy
    respond_to do |format|
      format.html { redirect_to customers_url, notice: 'Customer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customer
      @customer = Customer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def customer_params
      params.require(:customer).permit(:first_name, :last_name, :email, :phone_number, :pdffile, :pdffile2, :pdffile3,
                                       :pdffile4, :pdffile5, :pdffile6, :pdffile7, :pdffile8, :pdffile9, :pdffile10)
    end

    def user_params
      params.require(:useradmin).permit(:username, :password, :password_confirmation, :level)
    end
end
