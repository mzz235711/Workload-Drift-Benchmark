/*+ HashJoin(c ph v)
 HashJoin(ph v)
 SeqScan(c)
 IndexScan(ph)
 SeqScan(v)
 Leading((c (ph v))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v WHERE ph.PostId = c.PostId AND ph.PostId = v.PostId AND c.Score=1 AND ph.CreationDate>='2011-06-30 09:49:25'::timestamp AND ph.CreationDate<='2014-08-26 15:38:40'::timestamp AND v.BountyAmount>=0 AND v.BountyAmount<=50;

