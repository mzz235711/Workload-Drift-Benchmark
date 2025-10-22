/*+ HashJoin(ph c pl p u)
 HashJoin(c pl p u)
 HashJoin(c pl p)
 HashJoin(pl p)
 SeqScan(ph)
 SeqScan(c)
 IndexScan(pl)
 SeqScan(p)
 IndexScan(u)
 Leading((ph ((c (pl p)) u))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, users as u WHERE p.Id = pl.RelatedPostId AND pl.RelatedPostId = c.PostId AND pl.RelatedPostId = ph.PostId AND u.Id= c.UserId AND c.CreationDate>='2010-07-24 09:10:00'::timestamp AND c.CreationDate<='2014-09-07 15:48:10'::timestamp AND p.FavoriteCount=0 AND p.CreationDate>='2010-07-20 04:19:12'::timestamp AND p.CreationDate<='2014-08-22 20:07:32'::timestamp AND ph.CreationDate<='2014-08-15 17:26:03'::timestamp AND u.Views>=0 AND u.Views<=38 AND u.UpVotes<=10;

