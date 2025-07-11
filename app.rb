require "sinatra"
require "sinatra/reloader"

get("/") do
  redirect("/add")
end

get("/add") do
  erb(:add_form)
end

get("/wizard_add") do
  @first_num = params.fetch("first_num").to_f
  @second_num = params.fetch("second_num").to_f

  @result = @first_num + @second_num
  erb(:add_result)
end

get("/subtract") do
  erb(:sub_form)
end

get("/wizard_subtract") do
  @first_field = params.fetch("first_num").to_f
  @second_field = params.fetch("second_num").to_f

  @result_field = @second_field - @first_field

  erb(:sub_result)
end

get("/multiply") do
  erb(:mult_form)
end

get("/wizard_multiply") do
  @first_num = params.fetch("first_num").to_f
  @second_number = params.fetch("second_number").to_f

  @result = @first_num * @second_number
  erb(:mult_result)
end

get("/divide") do
  erb(:div_form)
end

get("/wizard_divide") do
  @first_div = params.fetch("first_num").to_f
  @second_div = params.fetch("second_num").to_f

  @result_div = @first_div / @second_div
  erb(:div_result)
end
