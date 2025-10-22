/*+ HashJoin(v ph c)
 HashJoin(ph c)
 SeqScan(v)
 SeqScan(ph)
 IndexScan(c)
 Leading((v (ph c))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v WHERE ph.PostId = c.PostId AND ph.PostId = v.PostId AND c.Score=1 AND c.CreationDate<='2014-09-12 17:38:34'::timestamp AND v.VoteTypeId=2;

