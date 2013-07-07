CREATE TABLE "owners" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "email" varchar(255) DEFAULT '' NOT NULL, "encrypted_password" varchar(255) DEFAULT '' NOT NULL, "reset_password_token" varchar(255), "reset_password_sent_at" datetime, "remember_created_at" datetime, "sign_in_count" integer DEFAULT 0, "current_sign_in_at" datetime, "last_sign_in_at" datetime, "current_sign_in_ip" varchar(255), "last_sign_in_ip" varchar(255), "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "name" varchar(255), "owner_id" integer);
CREATE TABLE "restaurants" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255), "description" text, "phone_number" varchar(255), "address" varchar(255), "city" varchar(255), "state" varchar(255), "zip_code" varchar(255), "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "image" varchar(255), "pdf_menu" varchar(255), "owner_id" integer);
CREATE TABLE "schema_migrations" ("version" varchar(255) NOT NULL);
CREATE UNIQUE INDEX "index_owners_on_email" ON "owners" ("email");
CREATE UNIQUE INDEX "index_owners_on_reset_password_token" ON "owners" ("reset_password_token");
CREATE UNIQUE INDEX "unique_schema_migrations" ON "schema_migrations" ("version");
INSERT INTO schema_migrations (version) VALUES ('20130627035408');

INSERT INTO schema_migrations (version) VALUES ('20130627155224');

INSERT INTO schema_migrations (version) VALUES ('20130627155413');

INSERT INTO schema_migrations (version) VALUES ('20130701025525');

INSERT INTO schema_migrations (version) VALUES ('20130701165047');

INSERT INTO schema_migrations (version) VALUES ('20130701184509');

INSERT INTO schema_migrations (version) VALUES ('20130701185136');

INSERT INTO schema_migrations (version) VALUES ('20130701191853');

INSERT INTO schema_migrations (version) VALUES ('20130701192158');

INSERT INTO schema_migrations (version) VALUES ('20130702191445');

INSERT INTO schema_migrations (version) VALUES ('20130702191719');

INSERT INTO schema_migrations (version) VALUES ('20130703030105');