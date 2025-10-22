/*+ HashJoin(c p pl u)
 HashJoin(c p pl)
 HashJoin(c p)
 IndexScan(c)
 SeqScan(p)
 SeqScan(pl)
 IndexScan(u)
 Leading((((c p) pl) u)) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, users as u WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.OwnerUserId = u.Id AND c.Score=1 AND p.Score>=-2 AND p.CommentCount<=12 AND u.DownVotes>=0;

