/*+ HashJoin(c ph v)
 HashJoin(ph v)
 SeqScan(c)
 SeqScan(ph)
 SeqScan(v)
 Leading((c (ph v))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v WHERE ph.PostId = c.PostId AND ph.PostId = v.PostId AND c.CreationDate>='2009-02-02 14:51:49'::timestamp AND v.BountyAmount>=0 AND v.BountyAmount<=50 AND v.CreationDate>='2010-07-26 00:00:00'::timestamp;

