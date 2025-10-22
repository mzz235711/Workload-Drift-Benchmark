/*+ HashJoin(ph u c pl p)
 HashJoin(u c pl p)
 HashJoin(c pl p)
 HashJoin(pl p)
 SeqScan(ph)
 SeqScan(u)
 SeqScan(c)
 SeqScan(pl)
 SeqScan(p)
 Leading((ph (u (c (pl p))))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, users as u WHERE p.Id = pl.RelatedPostId AND pl.RelatedPostId = c.PostId AND pl.RelatedPostId = ph.PostId AND u.Id= c.UserId AND p.ViewCount>=0 AND p.CreationDate>='2010-08-09 13:36:43'::timestamp AND p.CreationDate<='2014-09-10 20:39:36'::timestamp AND pl.LinkTypeId=1 AND ph.CreationDate>='2010-07-19 19:26:04'::timestamp AND u.Views>=0 AND u.DownVotes>=0;

