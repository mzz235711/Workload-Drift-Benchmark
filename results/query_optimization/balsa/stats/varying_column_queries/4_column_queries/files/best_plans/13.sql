/*+ HashJoin(ph c v)
 HashJoin(ph c)
 IndexScan(ph)
 SeqScan(c)
 SeqScan(v)
 Leading(((ph c) v)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v WHERE ph.PostId = c.PostId AND ph.PostId = v.PostId AND ph.CreationDate>='2010-09-23 06:10:48'::timestamp AND ph.CreationDate<='2014-07-13 17:00:56'::timestamp AND v.CreationDate>='2010-07-27 00:00:00'::timestamp AND v.CreationDate<='2014-09-11 00:00:00'::timestamp;

