/*+ HashJoin(c ph p)
 HashJoin(ph p)
 SeqScan(c)
 SeqScan(ph)
 SeqScan(p)
 Leading((c (ph p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph WHERE p.Id = c.PostId AND p.Id = ph.PostId AND p.ViewCount<=1955 AND p.AnswerCount>=0 AND p.CommentCount>=0 AND p.CreationDate>='2010-07-23 10:51:52'::timestamp AND ph.PostHistoryTypeId=3;

