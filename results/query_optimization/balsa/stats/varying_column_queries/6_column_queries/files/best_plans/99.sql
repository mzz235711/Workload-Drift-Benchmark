/*+ MergeJoin(c ph v)
 HashJoin(ph v)
 IndexScan(c)
 SeqScan(ph)
 SeqScan(v)
 Leading((c (ph v))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v WHERE ph.PostId = c.PostId AND ph.PostId = v.PostId AND c.CreationDate>='2010-08-18 15:12:47'::timestamp AND c.CreationDate<='2014-09-12 10:25:47'::timestamp AND ph.CreationDate<='2014-09-13 20:30:39'::timestamp AND v.VoteTypeId=9 AND v.BountyAmount>=0 AND v.BountyAmount<=0;

