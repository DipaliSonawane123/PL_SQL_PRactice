
SET SERVEROUTPUT ON;
DECLARE

	
	num		 INTEGER;
	num_to_word VARCHAR2(100);
	str		 VARCHAR2(100);
	len		 INTEGER;
	c		 INTEGER;
BEGIN
	num := 123456;

	len := Length(num);

	dbms_output.Put_line('Entered Number is: '
						||num);

	FOR i IN 1..len LOOP
		c := Substr(num, i, 1);

		SELECT Decode(c, 0, 'Zero ',
						1, 'One ',
						2, 'Two ',
						3, 'Three ',
						4, 'Four ',
						5, 'Five ',
						6, 'Six ',
						7, 'Seven ',
						8, 'Eight ',
						9, 'Nine ')
		INTO str
		FROM dual;

		num_to_word := num_to_word
					||str;
	END LOOP;

	
END;

-- Program End
