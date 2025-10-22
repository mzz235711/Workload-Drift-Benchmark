/*+ NestLoop(u c p pl ph)
 HashJoin(u c p pl)
 HashJoin(p pl)
 NestLoop(u c)
 IndexScan(u)
 IndexScan(c)
 SeqScan(p)
 SeqScan(pl)
 IndexScan(ph)
 Leading((((u c) (p pl)) ph)) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, users as u WHERE p.Id = pl.RelatedPostId AND pl.RelatedPostId = c.PostId AND pl.RelatedPostId = ph.PostId AND u.Id= c.UserId AND c.CreationDate>='2010-07-20 05:41:15'::timestamp AND p.PostTypeId=1 AND p.Score<=16 AND p.ViewCount=33 AND p.FavoriteCount<=16 AND pl.CreationDate<='2014-09-04 22:47:55'::timestamp AND ph.CreationDate>='2010-07-27 08:13:26'::timestamp AND u.DownVotes>=0 AND u.DownVotes<=0;

