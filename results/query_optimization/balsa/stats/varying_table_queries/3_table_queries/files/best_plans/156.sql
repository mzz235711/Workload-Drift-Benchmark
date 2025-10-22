/*+ HashJoin(ph v c)
 HashJoin(ph v)
 SeqScan(ph)
 SeqScan(v)
 IndexScan(c)
 Leading(((ph v) c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v WHERE ph.PostId = c.PostId AND ph.PostId = v.PostId AND c.CreationDate>='2010-07-19 19:56:21'::timestamp AND ph.CreationDate>='2010-09-20 23:01:53'::timestamp AND ph.CreationDate<='2014-06-04 23:12:42'::timestamp AND v.VoteTypeId=2 AND v.CreationDate<='2014-09-12 00:00:00'::timestamp;

