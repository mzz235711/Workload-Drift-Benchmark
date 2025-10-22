/*+ HashJoin(ph c p pl u)
 HashJoin(c p pl u)
 HashJoin(c p pl)
 HashJoin(p pl)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(p)
 SeqScan(pl)
 SeqScan(u)
 Leading((ph ((c (p pl)) u))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, users as u WHERE p.Id = pl.RelatedPostId AND pl.RelatedPostId = c.PostId AND pl.RelatedPostId = ph.PostId AND u.Id= c.UserId AND c.CreationDate>='2010-07-21 14:25:01'::timestamp AND c.CreationDate<='2014-09-10 23:50:12'::timestamp AND p.FavoriteCount>=0 AND ph.CreationDate>='2011-01-13 14:17:53'::timestamp AND u.Views>=0 AND u.DownVotes>=0 AND u.DownVotes<=48 AND u.CreationDate>='2011-08-15 12:47:57'::timestamp AND u.CreationDate<='2014-09-08 23:54:51'::timestamp;

