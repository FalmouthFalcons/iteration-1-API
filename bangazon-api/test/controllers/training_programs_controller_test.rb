require 'test_helper'

class TrainingProgramsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @training_program = training_programs(:one)
    @training_program_past = training_programs(:two)
  end

  test "should get index" do
    get training_programs_url, as: :json
    assert_response :success
  end

  test "should create training_program" do
    assert_difference('TrainingProgram.count') do
      post training_programs_url, params: { training_program: { end_date: @training_program_past.end_date, max_occupancy: @training_program_past.max_occupancy, start_date: @training_program_past.start_date, subject: @training_program_past.subject } }, as: :json
    end

    assert_response 201
  end

  test "should show training_program" do
    get training_program_url(@training_program), as: :json
    assert_response :success
  end

  test "should update training_program" do
    patch training_program_url(@training_program), params: { training_program: { end_date: @training_program.end_date, max_occupancy: @training_program.max_occupancy, start_date: @training_program.start_date, subject: @training_program.subject } }, as: :json
    assert_response 200
  end

  test "should destroy training_program" do
    assert_difference('TrainingProgram.count', -1) do
      delete training_program_url(@training_program), as: :json
    end

    assert_response 204
  end

    test "should not destroy training_program" do
    assert_difference('TrainingProgram.count', 0) do
      delete training_program_url(@training_program_past), as: :json
    end

    assert_response 200
  end
end
