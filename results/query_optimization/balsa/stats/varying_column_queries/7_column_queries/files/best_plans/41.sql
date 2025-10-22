/*+ HashJoin(b u c p pl)
 MergeJoin(u c p pl)
 HashJoin(c p pl)
 HashJoin(p pl)
 SeqScan(b)
 IndexScan(u)
 SeqScan(c)
 SeqScan(p)
 SeqScan(pl)
 Leading((b (u (c (p pl))))) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, posts as p, users as u, badges as b WHERE p.Id = pl.RelatedPostId AND p.Id = c.PostId AND u.Id = b.UserId AND u.Id = p.OwnerUserId AND c.CreationDate>='2010-07-22 16:26:29'::timestamp AND c.CreationDate<='2014-09-13 10:17:13'::timestamp AND pl.CreationDate<='2014-09-08 13:12:40'::timestamp AND p.PostTypeId=1 AND p.Score>=0 AND p.FavoriteCount>=0 AND b.Date>='2010-07-19 19:39:09'::timestamp;

