/*+ HashJoin(c v p u)
 HashJoin(v p u)
 MergeJoin(p u)
 SeqScan(c)
 SeqScan(v)
 SeqScan(p)
 IndexScan(u)
 Leading((c (v (p u)))) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE p.Id = c.PostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND c.Score=1 AND p.CommentCount<=16 AND v.VoteTypeId=16 AND u.Views<=42 AND u.DownVotes>=0 AND u.UpVotes>=0 AND u.UpVotes<=187;

