/*+ MergeJoin(c v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(c)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((c (v (u p)))) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE u.Id = c.UserId AND u.Id = p.OwnerUserId AND u.Id = v.UserId AND p.Score>=-1 AND p.Score<=16 AND p.ViewCount>=0 AND u.Reputation>=1 AND u.Reputation<=163 AND u.UpVotes>=0;

