SET search_path TO ubd_20222;

CREATE OR REPLACE FUNCTION update_report_dog(p_name_dog VARCHAR(255))
RETURNS SETOF REPORT_DOG_TYPE AS $$

DECLARE
	var_return_data REPORT_DOG_TYPE;
BEGIN

IF ((SELECT COUNT(*)
	FROM DOG d
	WHERE d.name_dog LIKE p_name_dog) = 0) 
THEN

	RAISE EXCEPTION 'ERROR: There is no dog called %', p_name_dog;

END IF;

FOR var_return_data in
	SELECT d.id_dog, d.name_dog, d.birth
	FROM DOG d
	WHERE name_dog LIKE p_name_dog

LOOP

	IF EXISTS (SELECT d.death
		FROM  DOG d   
		WHERE  d.id_dog = var_return_data.t_id_dog AND d.death IS NOT NULL)
 	THEN 
 		RAISE NOTICE ' % with id % is dead', p_name_dog,var_return_data.t_id_dog;
 		IF EXISTS (	SELECT rd.id_dog
						FROM  REPORT_DOG rd   
						WHERE  rd.id_dog = var_return_data.t_id_dog)
		THEN
			DELETE FROM REPORT_DOG rd
			WHERE rd.id_dog = var_return_data.t_id_dog;
		END IF;	

	ELSE

		SELECT o.name_owner, o.phone
		INTO var_return_data.t_name_owner, var_return_data.t_phone
		FROM OWNER o NATURAL JOIN DOG d
		WHERE d.id_dog = var_return_data.t_id_dog;

		SELECT COUNT(*)
		INTO var_return_data.t_num_visits
		FROM VISIT vi
		WHERE vi.id_dog = var_return_data.t_id_dog;

		SELECT COUNT(DISTINCT(va.id_vaccine)), MAX(vi.date)
		INTO var_return_data.t_num_dif_vaccines, var_return_data.t_last_vaccine
		FROM DOG d NATURAL LEFT JOIN VISIT vi  NATURAL JOIN VACCINATION va
		WHERE d.id_dog = var_return_data.t_id_dog AND vi.reason = 'vaccination';
		
		SELECT COUNT(pr.id_drug)
		INTO var_return_data.t_num_drugs
		FROM DOG d NATURAL LEFT JOIN VISIT vi NATURAL LEFT JOIN PRESCRIPTION pr
		WHERE d.id_dog = var_return_data.t_id_dog;
		
		SELECT COUNT(dt.id_test)
		INTO var_return_data.t_num_tests
		FROM DOG d NATURAL LEFT JOIN VISIT vi  NATURAL LEFT JOIN DOG_TEST dt
		WHERE d.id_dog = var_return_data.t_id_dog;


		IF NOT EXISTS(
				SELECT rd.id_dog
				FROM REPORT_DOG rd
				WHERE rd.id_dog = var_return_data.t_id_dog)

		THEN
				
			INSERT INTO REPORT_DOG
			VALUES (
				var_return_data.t_id_dog,
				var_return_data.t_name_dog,
				var_return_data.t_birth,
				var_return_data.t_name_owner,
				var_return_data.t_phone,
				var_return_data.t_num_visits,
				var_return_data.t_num_dif_vaccines,
				var_return_data.t_last_vaccine,
				var_return_data.t_num_drugs,
				var_return_data.t_num_tests
			);

		ELSE
			UPDATE REPORT_DOG
					SET	name_owner = var_return_data.t_name_owner,
					phone = var_return_data.t_phone,
					num_visits = var_return_data.t_num_visits,
					num_dif_vaccines = var_return_data.t_num_dif_vaccines,
					date_last_vaccine = var_return_data.t_last_vaccine,
					num_drugs = var_return_data.t_num_drugs,
					num_tests = var_return_data.t_num_tests
			WHERE id_dog = var_return_data.t_id_dog;
		END IF;

	END IF;
	RETURN NEXT var_return_data;
END LOOP;
END;

$$LANGUAGE plpgsql;
