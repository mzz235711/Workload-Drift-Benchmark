/*+ HashJoin(ph u c p pl)
 HashJoin(u c p pl)
 HashJoin(c p pl)
 MergeJoin(p pl)
 SeqScan(ph)
 SeqScan(u)
 SeqScan(c)
 SeqScan(p)
 SeqScan(pl)
 Leading((ph (u (c (p pl))))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, users as u WHERE p.Id = pl.RelatedPostId AND pl.RelatedPostId = c.PostId AND pl.RelatedPostId = ph.PostId AND u.Id= c.UserId AND c.Score=2 AND pl.CreationDate>='2011-04-02 10:27:54'::timestamp AND u.Reputation>=1 AND u.UpVotes>=0 AND u.UpVotes<=11;

