/*+ MergeJoin(c ph v)
 HashJoin(ph v)
 IndexScan(c)
 SeqScan(ph)
 SeqScan(v)
 Leading((c (ph v))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v WHERE ph.PostId = c.PostId AND ph.PostId = v.PostId AND ph.CreationDate>='2010-09-17 08:44:09'::timestamp AND ph.CreationDate<='2014-07-04 19:26:01'::timestamp;

