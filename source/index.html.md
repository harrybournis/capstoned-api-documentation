---
title: API Reference

language_tabs:
  - json: Examples

toc_footers:
  -     <div class="switch switch-blue">
      <input type="radio" class="switch-input" name="view2" value="week2" id="week2" checked onclick="lecturerSelected();">
      <label for="week2" class="switch-label switch-label-off">LECTURER</label>
      <input type="radio" class="switch-input" name="view2" value="month2" id="month2" onclick="studentSelected();">
      <label for="month2" class="switch-label switch-label-on">STUDENT</label>
      <span class="switch-selection"></span>
    </div>


includes:
  - introduction
  - endpoints/includes
  - endpoints/users/users
  - endpoints/users/register
  - endpoints/users/update_account
  - endpoints/users/confirm_account
  - endpoints/users/resend_confirmation_email
  - endpoints/authentication/authentication
  - endpoints/authentication/sign_in
  - endpoints/authentication/me
  - endpoints/authentication/refresh
  - endpoints/authentication/sign_out
  - endpoints/authentication/request_reset_password
  - endpoints/authentication/reset_password
  - endpoints/units/units
  - endpoints/units/create_unit
  - endpoints/units/index_units
  - endpoints/units/index_archived_units
  - endpoints/units/get_unit
  - endpoints/units/update_unit
  - endpoints/units/delete_unit
  - endpoints/units/archive_unit
  - endpoints/departments/departments
  - endpoints/departments/update_department
  - endpoints/departments/delete_department
  - endpoints/assignments/assignments
  - endpoints/assignments/create_assignment
  - endpoints/assignments/index_assignments
  - endpoints/assignments/get_assignment
  - endpoints/assignments/update_assignment
  - endpoints/assignments/delete_assignment
  - endpoints/iterations/iterations
  - endpoints/iterations/index_iterations
  - endpoints/iterations/get_iteration
  - endpoints/iterations/create_iteration
  - endpoints/iterations/update_iteration
  - endpoints/iterations/delete_iteration
  - endpoints/projects/projects
  - endpoints/projects/enrol
  - endpoints/projects/index_projects
  - endpoints/projects/get_project
  - endpoints/projects/create_project
  - endpoints/projects/update_project
  - endpoints/projects/delete_project
  - endpoints/projects/remove_student
  - endpoints/projects/create_extension
  - endpoints/projects/update_extension
  - endpoints/projects/destroy_extension
  - endpoints/projects/update_nickname
  - endpoints/project_evaluations/project_evaluations
  - endpoints/project_evaluations/feelings
  - endpoints/project_evaluations/index_feelings
  - endpoints/project_evaluations/create_project_evaluation
  - endpoints/project_evaluations/get_project_evaluations
  - endpoints/project_evaluations/get_iteration_stats
  - endpoints/project_evaluations/update_project_evaluation
  - endpoints/logs/logs
  - endpoints/logs/index_logs
  - endpoints/logs/create_log
  - endpoints/pa_forms/pa_forms
  - endpoints/pa_forms/create_pa_form
  - endpoints/pa_forms/index_pa_forms
  - endpoints/pa_forms/get_pa_form
  - endpoints/peer_assessments/peer_assessments
  - endpoints/peer_assessments/create_peer_assessment
  - endpoints/peer_assessments/index_peer_assessments
  - endpoints/peer_assessments/get_peer_assessment

search: true
---

