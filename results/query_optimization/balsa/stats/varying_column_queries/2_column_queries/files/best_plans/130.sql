/*+ HashJoin(c pl ph p u)
 HashJoin(c pl ph p)
 HashJoin(pl ph p)
 HashJoin(pl ph)
 SeqScan(c)
 IndexScan(pl)
 SeqScan(ph)
 IndexScan(p)
 SeqScan(u)
 Leading(((c ((pl ph) p)) u)) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, users as u WHERE p.Id = pl.RelatedPostId AND pl.RelatedPostId = c.PostId AND pl.RelatedPostId = ph.PostId AND u.Id= c.UserId AND pl.LinkTypeId=1 AND ph.CreationDate<='2014-09-03 19:00:28'::timestamp;

