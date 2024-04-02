class PostsController < ApplicationController
    def index
        @posts = Post.all
        render json: @posts
    end

    def calculate
        pre_cal = CalculateTwoNumbers.new(2,3)
        @sum = pre_cal.plus
        @multiply = pre_cal.multiply
        @divide = pre_cal.divide
        @minus = pre_cal.minus

        values = {
            multiply: @multiply,
            sum: @sum,
            divide: @divide,
            minus: @minus
        }

        render json: values
    end

end
