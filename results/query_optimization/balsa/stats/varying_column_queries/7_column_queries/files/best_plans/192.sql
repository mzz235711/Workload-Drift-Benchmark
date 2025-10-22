/*+ HashJoin(c b u p pl)
 HashJoin(b u p pl)
 MergeJoin(u p pl)
 MergeJoin(p pl)
 SeqScan(c)
 SeqScan(b)
 IndexScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((c (b (u (p pl))))) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, posts as p, users as u, badges as b WHERE p.Id = pl.RelatedPostId AND p.Id = c.PostId AND u.Id = b.UserId AND u.Id = p.OwnerUserId AND c.CreationDate<='2014-09-03 15:46:33'::timestamp AND p.AnswerCount>=0 AND p.FavoriteCount>=0 AND p.FavoriteCount<=6 AND p.CreationDate>='2010-08-09 15:51:47'::timestamp AND p.CreationDate<='2014-09-11 03:53:32'::timestamp AND b.Date<='2014-09-10 11:35:56'::timestamp;

