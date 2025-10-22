/*+ HashJoin(c pl p)
 HashJoin(pl p)
 SeqScan(c)
 SeqScan(pl)
 SeqScan(p)
 Leading((c (pl p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE c.UserId = p.OwnerUserId AND p.Id = pl.PostId AND c.Score=0 AND c.CreationDate>='2010-07-19 20:58:26'::timestamp AND p.Score>=-1 AND p.AnswerCount>=0 AND p.CommentCount<=9 AND p.FavoriteCount>=0 AND p.FavoriteCount<=18 AND p.CreationDate<='2014-08-28 13:50:47'::timestamp AND pl.LinkTypeId=1;

