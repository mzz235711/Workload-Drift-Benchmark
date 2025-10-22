/*+ NestLoop(u p pl c)
 HashJoin(u p pl)
 HashJoin(u p)
 IndexScan(u)
 SeqScan(p)
 SeqScan(pl)
 IndexScan(c)
 Leading((((u p) pl) c)) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, users as u WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.OwnerUserId = u.Id AND p.PostTypeId=1 AND p.ViewCount>=0 AND p.ViewCount<=18993 AND p.AnswerCount>=0 AND p.FavoriteCount>=0 AND p.CreationDate>='2010-07-19 19:42:28'::timestamp AND pl.LinkTypeId=1 AND u.Reputation>=1 AND u.DownVotes>=0;

