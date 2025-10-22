/*+ HashJoin(c p u)
 MergeJoin(c p)
 SeqScan(c)
 IndexScan(p)
 SeqScan(u)
 Leading(((c p) u)) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.PostId = p.Id AND c.UserId = u.Id AND c.CreationDate='2012-06-06 00:02:42'::timestamp AND u.Views>=0 AND u.CreationDate<='2014-09-02 09:44:18'::timestamp;

