/*+ MergeJoin(c u v)
 MergeJoin(u v)
 IndexScan(c)
 IndexScan(u)
 SeqScan(v)
 Leading((c (u v))) */
SELECT COUNT(*) FROM comments as c, votes as v, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND c.Score=0;

