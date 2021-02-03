# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Company.create(name: 'Apple', end_date: Date.today + 365.days)
Company.create(name: 'Coke', end_date: Date.today + 365.days)
Company.create(name: 'Samsung', end_date: Date.today + 365.days)


cycle1 = Cycle.create(name: 'PTP', description: 'Cuentas x Pagar', end_date: Date.today)
cycle2 = Cycle.create(name: 'QTC', description: 'Cuentas x Cobrar', end_date: Date.today + 7.days)
cycle3 = Cycle.create(name: 'RTR', description: 'General Ledger', end_date: Date.today + 15.days)

r1 = Responsibility.create(name: 'R1', description: 'Ingresar Factura Proveedor', end_date: Date.today + 30.days, cycle: cycle1)
r2 = Responsibility.create(name: 'R2', description: 'Pagar Factura Proveedor', end_date: Date.today + 30.days, cycle: cycle1)
r3 = Responsibility.create(name: 'R3', description: 'Inquiry Cuentas Por Pagar ', end_date: Date.today + 30.days, cycle: cycle2)
r4 = Responsibility.create(name: 'R4', description: 'Ingreso Facturas de Venta', end_date: Date.today + 30.days, cycle: cycle3)

u1 = UserAccess.create(username: 'Deivis', period: Date.today)
u2 = UserAccess.create(username: 'User2', period: Date.today)
u3 = UserAccess.create(username: 'Guest', period: Date.today)

UserResponsibility.create(user_access: u1, responsibility: r1)
UserResponsibility.create(user_access: u1, responsibility: r2)
UserResponsibility.create(user_access: u1, responsibility: r3)

UserResponsibility.create(user_access: u2, responsibility: r2)
UserResponsibility.create(user_access: u2, responsibility: r3)
UserResponsibility.create(user_access: u2, responsibility: r4)

UserResponsibility.create(user_access: u3, responsibility: r1)

c1 = Conflict.create(name: 'C1', description: 'Contiene R1, R2 y R3', cycle: cycle1, responsibilities: [r1, r2, r3])
c2 = Conflict.create(name: 'C2', description: 'Contiene R1, R3', cycle: cycle2, responsibilities: [r1, r3])
c3 = Conflict.create(name: 'C3', description: 'Contiene R1, R2, R4', cycle: cycle3, responsibilities: [r2, r2, r4])
c4 = Conflict.create(name: 'C4', description: 'Contiene R2, R4', cycle: cycle1, responsibilities: [r2,  r4])

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

UserConflict.create(user_access: u1, conflict: c1)

