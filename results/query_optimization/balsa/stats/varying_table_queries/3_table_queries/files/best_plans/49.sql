/*+ MergeJoin(u c v)
 HashJoin(c v)
 IndexScan(u)
 IndexScan(c)
 SeqScan(v)
 Leading((u (c v))) */
SELECT COUNT(*) FROM comments as c, votes as v, users as u WHERE u.Id = c.UserId AND c.PostId = v.PostId AND c.Score=0 AND c.CreationDate>='2010-08-09 08:06:15'::timestamp AND c.CreationDate<='2014-09-07 13:53:42'::timestamp AND v.BountyAmount=0;

