# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



cycle = Cycle.create(name: 'Cuentas x Pagar', description: 'Cuentas x Pagar', end_date: Date.today)
Cycle.create(name: 'Cuentas x Cobrar', description: 'Cuentas x Cobrar', end_date: Date.today + 7.days)
Cycle.create(name: 'General Ledger', description: 'General Ledger', end_date: Date.today + 15.days)

r1 = Responsibility.create(name: 'R1', description: 'Ingresar Factura Proveedor', end_date: Date.today + 30.days, cycle: cycle)
r2 = Responsibility.create(name: 'R2', description: 'Pagar Factura Proveedor', end_date: Date.today + 30.days, cycle: cycle)
r3 = Responsibility.create(name: 'R3', description: 'Inquiry Cuentas Por Pagar ', end_date: Date.today + 30.days, cycle: cycle)
r4 = Responsibility.create(name: 'R4', description: 'Ingreso Facturas de Venta', end_date: Date.today + 30.days, cycle: cycle)

u1 = UserAccess.create(username: 'Deivis')
u2 = UserAccess.create(username: 'User2')
u3 = UserAccess.create(username: 'Guest')

UserResponsibility.create(user_access: u1, responsibility: r1)
UserResponsibility.create(user_access: u1, responsibility: r2)
UserResponsibility.create(user_access: u1, responsibility: r3)

UserResponsibility.create(user_access: u2, responsibility: r2)
UserResponsibility.create(user_access: u2, responsibility: r3)
UserResponsibility.create(user_access: u2, responsibility: r4)

UserResponsibility.create(user_access: u3, responsibility: r1)

c1 = Conflict.create(name: 'C1', description: 'Contiene R1, R2 y R3', cycle: cycle)
c2 = Conflict.create(name: 'C2', description: 'Contiene R1, R3', cycle: cycle)
c3 = Conflict.create(name: 'C3', description: 'Contiene R1, R2, R4', cycle: cycle)
c4 = Conflict.create(name: 'C4', description: 'Contiene R2, R4', cycle: cycle)

ResponsibilityConflict.create(responsibility: r1, conflict: c1)
ResponsibilityConflict.create(responsibility: r2, conflict: c1)
ResponsibilityConflict.create(responsibility: r3, conflict: c1)

ResponsibilityConflict.create(responsibility: r1, conflict: c2)
ResponsibilityConflict.create(responsibility: r3, conflict: c2)

ResponsibilityConflict.create(responsibility: r1, conflict: c3)
ResponsibilityConflict.create(responsibility: r2, conflict: c3)
ResponsibilityConflict.create(responsibility: r4, conflict: c3)

ResponsibilityConflict.create(responsibility: r2, conflict: c4)
ResponsibilityConflict.create(responsibility: r4, conflict: c4)
