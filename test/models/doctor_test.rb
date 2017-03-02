require 'test_helper'

class DoctorTest < ActiveSupport::TestCase

  test "Should not save doctor without name" do
  	doctor = Doctor.new
  	assert_not doctor.save, "Saved the doctor without a name"
  end

  test "Should save doctor without age" do
  	doctor = Doctor.new
  	doctor.name = "test"
  	assert doctor.save, "Doctor without just the age not saved"
  end

end