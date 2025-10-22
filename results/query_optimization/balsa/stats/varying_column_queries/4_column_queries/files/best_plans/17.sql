/*+ HashJoin(ph v c)
 HashJoin(ph v)
 SeqScan(ph)
 SeqScan(v)
 IndexScan(c)
 Leading(((ph v) c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v WHERE ph.PostId = c.PostId AND ph.PostId = v.PostId AND c.Score=0 AND v.VoteTypeId=2 AND v.CreationDate>='2010-07-19 00:00:00'::timestamp AND v.CreationDate<='2014-09-08 00:00:00'::timestamp;

