/*+ HashJoin(ph p u c pl)
 HashJoin(p u c pl)
 HashJoin(u c pl)
 HashJoin(c pl)
 SeqScan(ph)
 SeqScan(p)
 SeqScan(u)
 SeqScan(c)
 SeqScan(pl)
 Leading((ph (p (u (c pl))))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, users as u WHERE p.Id = pl.RelatedPostId AND pl.RelatedPostId = c.PostId AND pl.RelatedPostId = ph.PostId AND u.Id= c.UserId AND c.Score=0 AND c.CreationDate<='2014-09-04 20:04:05'::timestamp AND p.PostTypeId=2 AND p.Score>=-3 AND p.ViewCount<=8456 AND p.CreationDate<='2014-09-11 17:09:42'::timestamp AND pl.LinkTypeId=1 AND ph.PostHistoryTypeId=5 AND u.DownVotes<=0;

