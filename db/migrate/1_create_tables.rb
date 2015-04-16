class CreateTables < ActiveRecord::Migration

    def change
        create_table :users do |t|
            t.string :username
            t.string :email
            t.string :password
            t.timestamps
        end

        create_table :pins do |t|
            # Your code goes here
            t.text :posts
            t.text :comments
            t.references :user
            t.timestamps
        end

        create_table :comments do |t|
            t.text :comment
            t.timestamps
            t.references :user

        end

        create_table :likes do |t|
            t.references :pin
            t.references :user


        end


    end

end