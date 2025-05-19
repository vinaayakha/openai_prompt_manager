class CreateOpenaiPromptManagerPrompts < ActiveRecord::Migration[8.0]
  def change
    create_table :openai_prompt_manager_prompts do |t|
      t.references :tool, null: true, foreign_key: { to_table: :openai_prompt_manager_tools }
      t.string :name, null: false
      t.text :content, null: false

      t.timestamps
    end
  end
end
