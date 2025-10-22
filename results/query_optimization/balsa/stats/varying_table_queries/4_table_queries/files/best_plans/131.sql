/*+ HashJoin(b u p pl)
 HashJoin(u p pl)
 HashJoin(p pl)
 SeqScan(b)
 SeqScan(u)
 SeqScan(p)
 IndexScan(pl)
 Leading((b (u (p pl)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, users as u, badges as b WHERE p.Id = pl.RelatedPostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND pl.LinkTypeId=1 AND pl.CreationDate>='2011-04-13 17:28:34'::timestamp AND p.ViewCount<=7527 AND p.CommentCount=5 AND p.FavoriteCount>=0 AND p.FavoriteCount<=13 AND u.Reputation<=108 AND u.Views>=0 AND u.Views<=11 AND u.UpVotes>=0 AND u.UpVotes<=15 AND u.CreationDate>='2010-08-06 18:53:54'::timestamp;

