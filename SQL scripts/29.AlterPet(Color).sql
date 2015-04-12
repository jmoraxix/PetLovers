ALTER TABLE pet
  ADD pet_color_code NUMBER(10);
  

ALTER TABLE pet
      ADD CONSTRAINT fk_color_code FOREIGN KEY (pet_color_code) REFERENCES petColor(Pet_Color_Code); 
      

