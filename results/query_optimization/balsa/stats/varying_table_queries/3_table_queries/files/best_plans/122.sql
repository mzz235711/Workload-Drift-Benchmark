/*+ HashJoin(ph v c)
 HashJoin(ph v)
 SeqScan(ph)
 SeqScan(v)
 IndexScan(c)
 Leading(((ph v) c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v WHERE ph.PostId = c.PostId AND ph.PostId = v.PostId AND ph.CreationDate<='2014-08-15 19:20:48'::timestamp AND v.CreationDate>='2010-07-27 00:00:00'::timestamp;

