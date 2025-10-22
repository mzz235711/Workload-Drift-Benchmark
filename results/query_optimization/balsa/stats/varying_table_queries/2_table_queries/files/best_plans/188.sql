/*+ HashJoin(b v)
 SeqScan(b)
 SeqScan(v)
 Leading((b v)) */
SELECT COUNT(*) FROM badges as b, votes as v WHERE b.UserId = v.UserId AND b.Date<='2014-08-28 20:31:04'::timestamp AND v.VoteTypeId=8 AND v.CreationDate>='2010-07-19 00:00:00'::timestamp;

