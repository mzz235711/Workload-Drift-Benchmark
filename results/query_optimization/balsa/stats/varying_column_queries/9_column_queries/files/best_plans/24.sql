/*+ HashJoin(b c u p pl v)
 HashJoin(c u p pl v)
 HashJoin(c u p pl)
 HashJoin(u p pl)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(c)
 SeqScan(u)
 SeqScan(p)
 SeqScan(pl)
 SeqScan(v)
 Leading((b ((c ((u p) pl)) v))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, votes as v, badges as b, users as u WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND c.CreationDate>='2010-10-02 22:25:22'::timestamp AND c.CreationDate<='2014-09-12 12:00:31'::timestamp AND p.ViewCount<=1305 AND p.FavoriteCount>=0 AND p.FavoriteCount<=4 AND p.CreationDate>='2010-08-04 13:18:12'::timestamp AND p.CreationDate<='2014-08-31 19:40:51'::timestamp AND pl.LinkTypeId=1 AND u.Views<=36;

