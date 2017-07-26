require 'test_helper'

class LogsControllerTest < ActionController::TestCase
  setup do
    @log = logs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:logs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create log" do
    assert_difference('Log.count') do
      post :create, log: { am_snack: @log.am_snack, carg_name: @log.carg_name, client: @log.client, data: @log.data, desc: @log.desc, dinner: @log.dinner, extra_id: @log.extra_id, f_time: @log.f_time, fd_breaktime: @log.fd_breaktime, fd_lunch: @log.fd_lunch, housekeeping_id: @log.housekeeping_id, imp_info: @log.imp_info, med_breaktime: @log.med_breaktime, med_eventime: @log.med_eventime, med_lunch: @log.med_lunch, med_ngtime: @log.med_ngtime, ngt_nack: @log.ngt_nack, personalhigiene_id: @log.personalhigiene_id, pm_snack: @log.pm_snack, s_time: @log.s_time }
    end

    assert_redirected_to log_path(assigns(:log))
  end

  test "should show log" do
    get :show, id: @log
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @log
    assert_response :success
  end

  test "should update log" do
    patch :update, id: @log, log: { am_snack: @log.am_snack, carg_name: @log.carg_name, client: @log.client, data: @log.data, desc: @log.desc, dinner: @log.dinner, extra_id: @log.extra_id, f_time: @log.f_time, fd_breaktime: @log.fd_breaktime, fd_lunch: @log.fd_lunch, housekeeping_id: @log.housekeeping_id, imp_info: @log.imp_info, med_breaktime: @log.med_breaktime, med_eventime: @log.med_eventime, med_lunch: @log.med_lunch, med_ngtime: @log.med_ngtime, ngt_nack: @log.ngt_nack, personalhigiene_id: @log.personalhigiene_id, pm_snack: @log.pm_snack, s_time: @log.s_time }
    assert_redirected_to log_path(assigns(:log))
  end

  test "should destroy log" do
    assert_difference('Log.count', -1) do
      delete :destroy, id: @log
    end

    assert_redirected_to logs_path
  end
end
