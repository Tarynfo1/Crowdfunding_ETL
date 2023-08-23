--After creating the database crowfunding_db, creating tables

CREATE TABLE "category" (
    "category_id" varchar(100)   NOT NULL,
    "category" varchar(100)   NOT NULL,
    CONSTRAINT "pk_category" PRIMARY KEY (
        "category_id"
     )
);

CREATE TABLE "subcategory" (
    "subcategory_id" varchar(100)   NOT NULL,
    "subcategory" varchar(100)   NOT NULL,
    CONSTRAINT "pk_subcategory" PRIMARY KEY (
        "subcategory_id"
     )
);

CREATE TABLE "contacts" (
    "contact_id" int   NOT NULL,
    "first_name" varchar(100)   NOT NULL,
    "last_name" varchar(100)   NOT NULL,
    "email" varchar(200)   NOT NULL,
    CONSTRAINT "pk_contacts" PRIMARY KEY (
        "contact_id"
     )
);

CREATE TABLE "campaign" (
    "cf_id" int   NOT NULL,
    "contact_id" int   NOT NULL,
    "company_name" varchar(100)   NOT NULL,
    "description" varchar(200)   NOT NULL,
    "goal" float   NOT NULL,
    "pledged" float   NOT NULL,
    "outcome" varchar(100)   NOT NULL,
    "backers_count" int   NOT NULL,
    "country" varchar(100)   NOT NULL,
    "currency" varchar(100)   NOT NULL,
    "launched_date" varchar(100)   NOT NULL,
    "end_date" varchar(100)   NOT NULL,
    "category_id" varchar(50)   NOT NULL,
    "subcategory_id" varchar(50)   NOT NULL,
    CONSTRAINT "pk_campaign" PRIMARY KEY (
        "cf_id","contact_id"
     )
);

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_contact_id" FOREIGN KEY("contact_id")
REFERENCES "contacts" ("contact_id");

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_category_id" FOREIGN KEY("category_id")
REFERENCES "category" ("category_id");

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_subcategory_id" FOREIGN KEY("subcategory_id")
REFERENCES "subcategory" ("subcategory_id");

--making sure the tables were created using the select * from table_name
SELECT * FROM category
SELECT * FROM subcategory
SELECT * FROM contacts
SELECT * FROM campaign

--importing data to tables from csvfiles. 
--changed the security features of the resources folder to everyone to be able to use copy statement
-- in query tool
-- reference:
--(https://stackoverflow.com/questions/54031813/i-am-trying-to-copy-a-file-but-getting-error-message)

COPY category
FROM 'C:\Users\user\Desktop\Crowdfunding_ETL\Starter_Files\Resources\category.csv'
DELIMITER ','
CSV HEADER;

SELECT * FROM category

COPY subcategory
FROM 'C:\Users\user\Desktop\Crowdfunding_ETL\Starter_Files\Resources\subcategory.csv'
DELIMITER ','
CSV HEADER;

SELECT * FROM subcategory

COPY contacts
FROM 'C:\Users\user\Desktop\Crowdfunding_ETL\Starter_Files\Resources\contacts.csv'
DELIMITER ','
CSV HEADER;

SELECT * FROM contacts

COPY campaign
FROM 'C:\Users\user\Desktop\Crowdfunding_ETL\Starter_Files\Resources\campaign.csv'
DELIMITER ','
CSV HEADER;

SELECT * FROM campaign




