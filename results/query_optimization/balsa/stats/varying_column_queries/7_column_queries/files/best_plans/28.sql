/*+ HashJoin(ph u c p pl)
 MergeJoin(u c p pl)
 HashJoin(c p pl)
 HashJoin(p pl)
 SeqScan(ph)
 IndexScan(u)
 SeqScan(c)
 SeqScan(p)
 SeqScan(pl)
 Leading((ph (u (c (p pl))))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, users as u WHERE p.Id = pl.RelatedPostId AND pl.RelatedPostId = c.PostId AND pl.RelatedPostId = ph.PostId AND u.Id= c.UserId AND c.CreationDate>='2010-07-20 12:49:37'::timestamp AND p.Score>=0 AND p.ViewCount<=6064 AND p.FavoriteCount>=0 AND p.CreationDate<='2014-09-02 23:09:58'::timestamp AND u.DownVotes>=0 AND u.DownVotes<=1;

