class PeopleController < ApplicationController
  before_action :set_person, only: [:show, :edit, :update, :destroy]

  def index
    if params.key?(:query)
      @people = Person.where('people.name LIKE ?', "%#{params[:query]}%")
    else
      @people = Person.all
    end
  end

  def show
  end

  def new
    @person = Person.new
    3.times { @person.hobbies.build }
    @kinds = Hobby.kinds.keys.to_a
  end

  def edit
  end

  def create
    @person = Person.new(person_params)

    respond_to do |format|
      if @person.save
        format.html { redirect_to @person, notice: 'person was successfully created.' }
        format.json { render :show, status: :created, location: @person }
      else
        @kinds = Hobby.kinds.keys.to_a
        format.html { render :new }
        format.json { render json: @person.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @person.update(person_params)
        format.html { redirect_to @person, notice: 'person was successfully updated.' }
        format.json { render :show, status: :ok, location: @person }
      else
        format.html { render :edit }
        format.json { render json: @person.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @person.destroy
    respond_to do |format|
      format.html { redirect_to people_path, notice: 'person was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_person
    @person = Person.find(params[:id])
  end

  def person_params
    params.require(:person).permit(:name, :age, :gender, :alien, :avatar,
                                   hobbies_attributes: [:name, :kind])
  end
end
