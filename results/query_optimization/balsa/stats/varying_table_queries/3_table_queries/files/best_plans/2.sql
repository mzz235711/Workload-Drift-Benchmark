/*+ HashJoin(c v u)
 MergeJoin(v u)
 IndexScan(c)
 IndexScan(v)
 IndexScan(u)
 Leading((c (v u))) */
SELECT COUNT(*) FROM comments as c, votes as v, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND v.BountyAmount<=50 AND u.Reputation=101 AND u.Views>=0;

