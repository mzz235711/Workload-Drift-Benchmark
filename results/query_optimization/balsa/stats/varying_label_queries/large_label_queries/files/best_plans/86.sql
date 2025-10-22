/*+ HashJoin(v p u c)
 HashJoin(v p u)
 HashJoin(p u)
 SeqScan(v)
 SeqScan(p)
 IndexScan(u)
 SeqScan(c)
 Leading(((v (p u)) c)) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE p.Id = c.PostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND c.Score=0 AND p.ViewCount<=2593 AND p.CommentCount<=11 AND v.CreationDate>='2010-07-19 00:00:00'::timestamp AND u.Reputation<=231 AND u.Views>=0 AND u.Views<=30 AND u.UpVotes>=0 AND u.UpVotes<=27;

