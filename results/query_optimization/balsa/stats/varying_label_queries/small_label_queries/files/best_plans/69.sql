/*+ HashJoin(u p c pl)
 NestLoop(u p c)
 HashJoin(u p)
 IndexScan(u)
 SeqScan(p)
 IndexScan(c)
 SeqScan(pl)
 Leading((((u p) c) pl)) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, users as u WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.OwnerUserId = u.Id AND c.CreationDate>='2010-08-13 05:58:54'::timestamp AND p.CommentCount>=0 AND p.CommentCount<=16 AND p.FavoriteCount=0 AND p.CreationDate>='2010-08-05 22:01:03'::timestamp AND p.CreationDate<='2014-09-13 01:03:30'::timestamp AND pl.LinkTypeId=3 AND u.Reputation<=310 AND u.Views>=0 AND u.CreationDate>='2010-07-19 14:01:36'::timestamp AND u.CreationDate<='2014-09-11 16:57:06'::timestamp;

