CREATE OR REPLACE FUNCTION ce.get_outstanding_fees()
RETURNS JSON AS $$
BEGIN
  RETURN (
    SELECT json_agg(row_to_json(t))
    FROM (
      SELECT
        s.student_id,
        s.first_name,
        s.last_name,
        o.total_due,
        COALESCE(sum(p.amount_paid),0) AS total_paid,
        (o.total_due - COALESCE(sum(p.amount_paid),0)) AS outstanding
      FROM ce.students s
      JOIN ce.fee_obligations o USING(student_id)
      LEFT JOIN ce.fee_payments p USING(student_id)
      GROUP BY s.student_id,o.total_due
    ) t
  );
END;
$$ LANGUAGE plpgsql;