CREATE FUNCTION agecalculator(born date)
   returns int
   language plpgsql
  as
$$
declare
	years int;
begin
   SELECT DATE_PART('year', AGE(NOW(), born)) into years;
   return years;
end;
$$;

