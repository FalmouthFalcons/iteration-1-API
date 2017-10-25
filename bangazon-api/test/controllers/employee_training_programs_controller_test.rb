require 'test_helper'

class EmployeeTrainingProgramsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @employee_training_program = employee_training_programs(:one)
  end

  test "should get index" do
    get employee_training_programs_url, as: :json
    assert_response :success
  end

  test "should create employee_training_program" do
    assert_difference('EmployeeTrainingProgram.count') do
      post employee_training_programs_url, params: { employee_training_program: { employee_id: @employee_training_program.employee_id, training_program_id: @employee_training_program.training_program_id } }, as: :json
    end

    assert_response 201
  end

  test "should show employee_training_program" do
    get employee_training_program_url(@employee_training_program), as: :json
    assert_response :success
  end

  test "should update employee_training_program" do
    patch employee_training_program_url(@employee_training_program), params: { employee_training_program: { employee_id: @employee_training_program.employee_id, training_program_id: @employee_training_program.training_program_id } }, as: :json
    assert_response 200
  end

  test "should destroy employee_training_program" do
    assert_difference('EmployeeTrainingProgram.count', -1) do
      delete employee_training_program_url(@employee_training_program), as: :json
    end

    assert_response 204
  end
end
