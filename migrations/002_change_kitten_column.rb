Sequel.migration {
  up do
    alter_table(:cats) do
      set_column_type :kittens, String
    end
  end

  down do
    drop_table(:cats)
  end
}