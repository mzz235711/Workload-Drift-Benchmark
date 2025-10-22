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
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, users as u WHERE p.Id = pl.RelatedPostId AND pl.RelatedPostId = c.PostId AND pl.RelatedPostId = ph.PostId AND u.Id= c.UserId AND c.CreationDate<='2014-08-22 01:19:46'::timestamp AND p.AnswerCount<=4 AND p.FavoriteCount>=0 AND p.FavoriteCount<=24 AND ph.PostHistoryTypeId=2 AND u.UpVotes>=0 AND u.UpVotes<=195;

