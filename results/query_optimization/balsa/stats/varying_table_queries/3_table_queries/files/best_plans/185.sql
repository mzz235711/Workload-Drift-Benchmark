/*+ HashJoin(u c v)
 MergeJoin(c v)
 IndexScan(u)
 SeqScan(c)
 SeqScan(v)
 Leading((u (c v))) */
SELECT COUNT(*) FROM comments as c, votes as v, users as u WHERE u.Id = c.UserId AND c.PostId = v.PostId AND v.BountyAmount>=0 AND u.Views>=0 AND u.Views<=91;

