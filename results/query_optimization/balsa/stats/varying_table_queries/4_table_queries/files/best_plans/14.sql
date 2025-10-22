/*+ HashJoin(b u p pl)
 MergeJoin(u p pl)
 HashJoin(p pl)
 SeqScan(b)
 SeqScan(u)
 SeqScan(p)
 IndexScan(pl)
 Leading((b (u (p pl)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, users as u, badges as b WHERE p.Id = pl.RelatedPostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND pl.LinkTypeId=1 AND pl.CreationDate>='2011-03-28 15:37:13'::timestamp AND pl.CreationDate<='2014-08-08 04:46:39'::timestamp AND p.Score>=0 AND p.ViewCount>=0 AND p.ViewCount<=2762 AND p.AnswerCount>=0 AND p.CommentCount>=0 AND p.FavoriteCount>=0 AND u.UpVotes>=0 AND b.Date<='2014-09-09 18:05:41'::timestamp;

