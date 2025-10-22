/*+ HashJoin(v ph c)
 HashJoin(v ph)
 IndexScan(v)
 IndexScan(ph)
 SeqScan(c)
 Leading(((v ph) c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v WHERE ph.PostId = c.PostId AND ph.PostId = v.PostId AND c.CreationDate<='2014-09-13 20:15:04'::timestamp;

