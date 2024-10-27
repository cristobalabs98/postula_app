require 'rails_helper'

RSpec.describe JobOffer, type: :model do
  it 'permite a un usuario postularse a una oferta' do
    # Crear la oferta y el usuario
    offer = JobOffer.create(title: 'Desarrollador', description: 'Trabajo remoto')
    puts offer.errors.full_messages unless offer.persisted?

    user = User.create(name: 'Empleado', email: 'empleado@example.com', role: 'candidate')
    puts user.errors.full_messages unless user.persisted?

    # Crear la aplicación
    application = offer.applications.create(user: user)
    puts application.errors.full_messages unless application.valid?

    # Verificar que la aplicación sea válida
    expect(application).to be_valid
  end
end

