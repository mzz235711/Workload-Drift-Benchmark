/*+ NestLoop(c p pl u ph)
 HashJoin(c p pl u)
 HashJoin(c p pl)
 HashJoin(p pl)
 SeqScan(c)
 SeqScan(p)
 SeqScan(pl)
 SeqScan(u)
 IndexScan(ph)
 Leading((((c (p pl)) u) ph)) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, users as u WHERE p.Id = pl.RelatedPostId AND pl.RelatedPostId = c.PostId AND pl.RelatedPostId = ph.PostId AND u.Id= c.UserId AND pl.LinkTypeId=1 AND ph.PostHistoryTypeId=1 AND ph.CreationDate>='2010-11-17 18:14:20'::timestamp AND ph.CreationDate<='2014-09-10 08:15:08'::timestamp AND u.Reputation=101 AND u.Views<=36 AND u.CreationDate>='2010-09-01 09:46:35'::timestamp;

