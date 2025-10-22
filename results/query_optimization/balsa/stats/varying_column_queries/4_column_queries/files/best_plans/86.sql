/*+ HashJoin(c p u v)
 HashJoin(c p u)
 HashJoin(c p)
 IndexScan(c)
 SeqScan(p)
 IndexScan(u)
 SeqScan(v)
 Leading((((c p) u) v)) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE p.Id = c.PostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Views>=0 AND u.DownVotes<=0 AND u.UpVotes>=0 AND u.UpVotes<=5;

