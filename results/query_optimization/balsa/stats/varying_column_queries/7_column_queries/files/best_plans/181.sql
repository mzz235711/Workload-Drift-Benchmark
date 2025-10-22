/*+ HashJoin(ph u p c pl)
 MergeJoin(u p c pl)
 HashJoin(p c pl)
 HashJoin(c pl)
 SeqScan(ph)
 IndexScan(u)
 SeqScan(p)
 SeqScan(c)
 SeqScan(pl)
 Leading((ph (u (p (c pl))))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, users as u WHERE p.Id = pl.RelatedPostId AND pl.RelatedPostId = c.PostId AND pl.RelatedPostId = ph.PostId AND u.Id= c.UserId AND c.Score=0 AND p.PostTypeId=2 AND p.FavoriteCount<=9 AND pl.CreationDate>='2011-07-07 06:14:31'::timestamp AND ph.PostHistoryTypeId=3 AND u.UpVotes>=0 AND u.CreationDate<='2014-09-10 20:19:59'::timestamp;

