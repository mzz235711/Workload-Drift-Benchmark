/*+ HashJoin(ph p c)
 HashJoin(ph p)
 SeqScan(ph)
 IndexScan(p)
 SeqScan(c)
 Leading(((ph p) c)) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph WHERE p.Id = c.PostId AND p.Id = ph.PostId AND c.CreationDate>='2010-07-23 10:37:02'::timestamp AND p.AnswerCount>=0 AND ph.PostHistoryTypeId=5;

