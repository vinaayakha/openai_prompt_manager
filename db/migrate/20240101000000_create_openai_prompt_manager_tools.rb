class CreateOpenaiPromptManagerTools < ActiveRecord::Migration[8.0]
  def change
    create_table :openai_prompt_manager_tools do |t|
      t.string :name, null: false
      t.text :description

      t.timestamps
    end
  end
end
