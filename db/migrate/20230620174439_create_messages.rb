class CreateMessages < ActiveRecord::Migration[7.0]
  def change
    create_table :messages do |t|
      t.string :greeting

      t.timestamps
    end

    greetings = ['Hello', 'Bonjour', 'Namaste', 'Komusta', 'Ciao']

    greetings.each do |greeting|
      Message.create(greeting: greeting)
    end
  end
end
