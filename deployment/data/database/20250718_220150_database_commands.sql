ALTER TABLE "myfirstmodule$employee" ALTER COLUMN "contactinfo" RENAME TO "city";
UPDATE "mendixsystem$attribute"
 SET "entity_id" = 'c4098a5e-4245-4fd4-bbc2-37a137731f0c', 
"attribute_name" = 'City', 
"column_name" = 'city', 
"type" = 30, 
"length" = 200, 
"default_value" = '', 
"is_auto_number" = false
 WHERE "id" = '91d03c02-09f8-4bbf-9cfb-ac7c4be868ac';
UPDATE "mendixsystem$version"
 SET "versionnumber" = '4.2', 
"lastsyncdate" = '20250718 22:01:50';
