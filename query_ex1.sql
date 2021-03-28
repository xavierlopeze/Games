WITH T_COUNT_SUBJECTS AS (
  SELECT COUNT(SUBJECT_ID) AS COUNT, STUDENT_ID
  FROM ENROLLED
  WHERE COUNT > 1)
)

SELECT STUDENT_NAME
  FORM T_COUNT_SUBJECTS AS t1
    JOIN STUDENTS AS t2
    ON t1.STUDENT_ID = T2.STUDENT_ID;
/*
The query result should be:


Mary
John
*/

/*
Note that there is a STUDENT_ID with no name (STUDENT_ID = 4) that has applied to more than one subject but it does not have a named informed on the students table.
*/
