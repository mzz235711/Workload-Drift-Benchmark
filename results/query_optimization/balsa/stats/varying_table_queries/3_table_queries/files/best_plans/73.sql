/*+ HashJoin(ph c p)
 HashJoin(c p)
 SeqScan(ph)
 IndexScan(c)
 IndexScan(p)
 Leading((ph (c p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph WHERE p.Id = c.PostId AND p.Id = ph.PostId AND c.Score=0 AND p.ViewCount<=37288 AND p.AnswerCount<=4 AND p.CommentCount>=0 AND ph.PostHistoryTypeId=24 AND ph.CreationDate>='2010-10-18 17:19:09'::timestamp;

