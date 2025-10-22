/*+ HashJoin(ph p c)
 HashJoin(p c)
 SeqScan(ph)
 SeqScan(p)
 SeqScan(c)
 Leading((ph (p c))) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph WHERE p.Id = c.PostId AND p.Id = ph.PostId AND c.Score=1 AND p.ViewCount<=41652 AND p.AnswerCount>=0 AND p.CommentCount<=12 AND ph.PostHistoryTypeId=16;

