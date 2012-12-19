invoice
=======

Use nested forms for one to many relation tables
table structure
bills
 -bnr
 -customer
 -datump

items
 -description
 -bill_id #very important for nested form pk-fk relation between tables
 
 Caution. Don't use if you need dynamic manipulation with created fields (jquery live not available)
 until next version
