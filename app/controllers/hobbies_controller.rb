class HobbiesController < ApplicationController
  def new
    @person = Person.find_by(id: params[:person_id])
    @hobby = @person.hobbies.build
    @kinds = Hobby.kinds.keys.to_a
  end

  def create
    @person = Person.find_by(id: params[:person_id])
    if @person
      @hobby = @person.hobbies.build(hobby_params)
      if @hobby.save
        redirect_to @person, notice: 'hobby was successfully created.'
      else
        render :new
      end
    else
      redirect_to people_path, notice: 'person not found'
    end
  end

  def destroy
    @hobby = Hobby.find(params[:id])
    @person = @hobby.person
    @hobby.destroy
    respond_to do |format|
      format.html { redirect_to @person, notice: 'hobby was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def hobby_params
    params.require(:hobby).permit(:name, :kind)
  end
end
