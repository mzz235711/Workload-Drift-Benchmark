/*+ HashJoin(c v)
 IndexScan(c)
 SeqScan(v)
 Leading((c v)) */
SELECT COUNT(*) FROM comments as c, votes as v WHERE c.UserId = v.UserId AND c.CreationDate>='2010-08-04 10:09:10'::timestamp AND c.CreationDate<='2014-09-08 18:31:04'::timestamp;

