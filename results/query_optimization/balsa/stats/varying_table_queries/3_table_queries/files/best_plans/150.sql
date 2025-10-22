/*+ HashJoin(c ph v)
 HashJoin(ph v)
 SeqScan(c)
 IndexScan(ph)
 SeqScan(v)
 Leading((c (ph v))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v WHERE ph.PostId = c.PostId AND ph.PostId = v.PostId AND c.Score=0 AND c.CreationDate>='2010-07-21 11:58:10'::timestamp AND c.CreationDate<='2014-09-10 00:33:30'::timestamp AND v.CreationDate='2012-09-25 00:00:00'::timestamp;

