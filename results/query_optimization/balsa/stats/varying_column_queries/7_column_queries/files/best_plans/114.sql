/*+ HashJoin(pl c p)
 HashJoin(c p)
 SeqScan(pl)
 SeqScan(c)
 SeqScan(p)
 Leading((pl (c p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE c.UserId = p.OwnerUserId AND p.Id = pl.PostId AND c.Score=1 AND p.PostTypeId=1 AND p.Score=0 AND p.AnswerCount<=4 AND p.CommentCount>=0 AND p.CommentCount<=11 AND p.FavoriteCount<=51;

