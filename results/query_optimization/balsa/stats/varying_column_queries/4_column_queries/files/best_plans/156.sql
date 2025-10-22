/*+ HashJoin(ph v c)
 HashJoin(ph v)
 IndexScan(ph)
 SeqScan(v)
 SeqScan(c)
 Leading(((ph v) c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v WHERE ph.PostId = c.PostId AND ph.PostId = v.PostId AND c.CreationDate>='2010-07-23 15:50:47'::timestamp AND ph.CreationDate>='2011-01-20 17:50:00'::timestamp AND v.BountyAmount>=0 AND v.CreationDate>='2009-02-02 00:00:00'::timestamp;

