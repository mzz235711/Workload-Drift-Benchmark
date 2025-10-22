/*+ HashJoin(c u p v b)
 HashJoin(c u p v)
 MergeJoin(c u p)
 MergeJoin(c u)
 SeqScan(c)
 IndexScan(u)
 SeqScan(p)
 SeqScan(v)
 SeqScan(b)
 Leading(((((c u) p) v) b)) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, badges as b, users as u WHERE u.Id =c.UserId AND c.UserId = p.OwnerUserId AND p.OwnerUserId = v.UserId AND v.UserId = b.UserId AND p.PostTypeId=1 AND p.Score<=16 AND p.CommentCount>=0 AND p.CommentCount<=17 AND p.FavoriteCount>=0 AND v.BountyAmount>=0 AND u.DownVotes>=0;

