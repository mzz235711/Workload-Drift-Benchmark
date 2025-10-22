/*+ HashJoin(c v)
 SeqScan(c)
 SeqScan(v)
 Leading((c v)) */
SELECT COUNT(*) FROM comments as c, votes as v WHERE c.UserId = v.UserId AND c.CreationDate>='2009-04-12 07:49:19'::timestamp AND c.CreationDate<='2014-09-11 18:45:09'::timestamp AND v.BountyAmount>=0 AND v.CreationDate>='2010-07-27 00:00:00'::timestamp;

