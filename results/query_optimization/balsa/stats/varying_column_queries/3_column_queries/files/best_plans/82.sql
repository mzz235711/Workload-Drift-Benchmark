/*+ HashJoin(c p u)
 HashJoin(c p)
 SeqScan(c)
 IndexScan(p)
 SeqScan(u)
 Leading(((c p) u)) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.PostId = p.Id AND c.UserId = u.Id AND p.ViewCount>=0 AND p.CreationDate<='2014-09-13 23:15:00'::timestamp AND u.DownVotes<=6;

