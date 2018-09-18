class CreateIncidences < ActiveRecord::Migration[5.2]
  def change
    create_table :incidences do |t|
      t.string :num_radicado
      t.string :decripcion
      t.date :fecha_registro
      t.date :fecha_incidencia
      t.string :adjunto
      t.string :estado

      t.timestamps
    end
  end
end
