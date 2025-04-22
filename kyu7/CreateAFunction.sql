CREATE FUNCTION increment(n int)
RETURNS INT
LANGUAGE plpgsql
AS
$$
BEGIN
   RETURN n + 1;
END;
$$;
