/*+ HashJoin(b v)
 SeqScan(b)
 SeqScan(v)
 Leading((b v)) */
SELECT COUNT(*) FROM badges as b, votes as v WHERE b.UserId = v.UserId AND b.Date<='2014-08-02 16:12:36'::timestamp AND v.BountyAmount<=100 AND v.CreationDate>='2010-07-28 00:00:00'::timestamp;

