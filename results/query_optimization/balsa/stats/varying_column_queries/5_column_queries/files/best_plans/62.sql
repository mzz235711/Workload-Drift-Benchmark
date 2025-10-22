/*+ HashJoin(b v c u pl p)
 HashJoin(v c u pl p)
 HashJoin(c u pl p)
 MergeJoin(u pl p)
 HashJoin(pl p)
 SeqScan(b)
 SeqScan(v)
 SeqScan(c)
 IndexScan(u)
 SeqScan(pl)
 SeqScan(p)
 Leading((b (v (c (u (pl p)))))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, votes as v, badges as b, users as u WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.CommentCount<=17 AND pl.LinkTypeId=1 AND v.BountyAmount<=50 AND u.Reputation<=128 AND u.UpVotes>=0;

