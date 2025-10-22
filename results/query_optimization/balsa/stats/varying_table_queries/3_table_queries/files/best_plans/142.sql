/*+ HashJoin(u p pl)
 MergeJoin(p pl)
 IndexScan(u)
 SeqScan(p)
 IndexScan(pl)
 Leading((u (p pl))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, users as u WHERE p.Id = pl.PostId AND p.OwnerUserId = u.Id AND p.ViewCount>=0 AND p.ViewCount<=14325 AND p.AnswerCount>=0 AND p.CommentCount>=0 AND p.FavoriteCount>=0 AND p.FavoriteCount<=8 AND p.CreationDate>='2010-07-27 09:25:00'::timestamp AND p.CreationDate<='2014-09-04 14:50:54'::timestamp AND u.Reputation>=1;

