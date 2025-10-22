/*+ HashJoin(ph v c)
 HashJoin(ph v)
 SeqScan(ph)
 SeqScan(v)
 IndexScan(c)
 Leading(((ph v) c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v WHERE ph.PostId = c.PostId AND ph.PostId = v.PostId AND c.Score=0 AND c.CreationDate<='2014-09-05 23:55:41'::timestamp AND ph.CreationDate>='2010-08-09 11:12:16'::timestamp AND v.CreationDate<='2014-09-10 00:00:00'::timestamp;

