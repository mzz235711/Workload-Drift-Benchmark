/*+ MergeJoin(v u c)
 MergeJoin(v u)
 IndexScan(v)
 IndexScan(u)
 SeqScan(c)
 Leading(((v u) c)) */
SELECT COUNT(*) FROM comments as c, votes as v, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND c.Score=0 AND c.CreationDate='2011-04-30 16:23:39'::timestamp;

