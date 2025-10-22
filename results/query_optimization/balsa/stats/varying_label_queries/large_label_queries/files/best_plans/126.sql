/*+ HashJoin(b ph v c p pl)
 MergeJoin(ph v c p pl)
 MergeJoin(v c p pl)
 MergeJoin(c p pl)
 MergeJoin(p pl)
 IndexScan(b)
 SeqScan(ph)
 IndexScan(v)
 SeqScan(c)
 SeqScan(p)
 IndexScan(pl)
 Leading((b (ph (v (c (p pl)))))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, votes as v, badges as b WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.Id = ph.PostId AND p.Id = v.PostId AND b.UserId = c.UserId AND c.Score=0 AND c.CreationDate>='2010-08-18 13:42:31'::timestamp AND p.PostTypeId=1 AND p.Score>=-2 AND p.Score<=17 AND p.FavoriteCount>=0 AND p.FavoriteCount<=6 AND p.CreationDate<='2014-08-14 20:28:11'::timestamp AND pl.LinkTypeId=1 AND b.Date<='2014-09-06 20:42:05'::timestamp;

