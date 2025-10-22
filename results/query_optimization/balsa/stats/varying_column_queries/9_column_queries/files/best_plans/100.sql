/*+ MergeJoin(u p pl)
 HashJoin(p pl)
 IndexScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((u (p pl))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, users as u WHERE p.Id = pl.PostId AND p.OwnerUserId = u.Id AND p.Score>=0 AND p.ViewCount<=2240 AND p.AnswerCount>=0 AND p.AnswerCount<=5 AND p.CommentCount>=0 AND p.FavoriteCount>=0 AND pl.CreationDate<='2014-09-09 22:35:17'::timestamp AND u.DownVotes<=0 AND u.CreationDate>='2011-01-18 19:30:47'::timestamp;

