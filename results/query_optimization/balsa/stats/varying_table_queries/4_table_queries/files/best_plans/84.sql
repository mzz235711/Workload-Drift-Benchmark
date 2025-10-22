/*+ MergeJoin(c p u v)
 HashJoin(p u v)
 HashJoin(p u)
 IndexScan(c)
 IndexScan(p)
 SeqScan(u)
 IndexScan(v)
 Leading((c ((p u) v))) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE u.Id = c.UserId AND u.Id = p.OwnerUserId AND u.Id = v.UserId AND p.PostTypeId=1 AND p.Score>=-2 AND u.Views<=94;

