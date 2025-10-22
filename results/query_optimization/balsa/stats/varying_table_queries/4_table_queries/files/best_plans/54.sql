/*+ HashJoin(b u p pl)
 HashJoin(u p pl)
 HashJoin(p pl)
 SeqScan(b)
 SeqScan(u)
 SeqScan(p)
 IndexScan(pl)
 Leading((b (u (p pl)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, users as u, badges as b WHERE p.Id = pl.RelatedPostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.PostTypeId=1 AND p.ViewCount>=0 AND p.AnswerCount<=4 AND p.FavoriteCount=0 AND p.CreationDate>='2010-07-26 16:10:45'::timestamp AND b.Date>='2010-07-22 17:33:19'::timestamp AND b.Date<='2014-09-07 08:47:42'::timestamp;

