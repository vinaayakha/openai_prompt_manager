module OpenaiPromptManager
  class PromptsController < ApplicationController
    before_action :set_tool
    before_action :set_prompt, only: %i[show edit update destroy]

    def index
      @prompts = @tool.prompts
    end

    def show; end

    def new
      @prompt = @tool.prompts.build
    end

    def edit; end

    def create
      @prompt = @tool.prompts.build(prompt_params)
      if @prompt.save
        redirect_to [@tool, @prompt], notice: 'Prompt was successfully created.'
      else
        render :new, status: :unprocessable_entity
      end
    end

    def update
      if @prompt.update(prompt_params)
        redirect_to [@tool, @prompt], notice: 'Prompt was successfully updated.'
      else
        render :edit, status: :unprocessable_entity
      end
    end

    def destroy
      @prompt.destroy
      redirect_to tool_prompts_url(@tool), notice: 'Prompt was successfully destroyed.'
    end

    private

    def set_tool
      @tool = Tool.find(params[:tool_id])
    end

    def set_prompt
      @prompt = @tool.prompts.find(params[:id])
    end

    def prompt_params
      params.require(:prompt).permit(:name, :content)
    end
  end
end
