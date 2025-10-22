/*+ MergeJoin(u c p)
 HashJoin(c p)
 IndexScan(u)
 SeqScan(c)
 SeqScan(p)
 Leading((u (c p))) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.PostId = p.Id AND c.UserId = u.Id AND c.CreationDate>='2010-07-20 08:56:46'::timestamp AND c.CreationDate<='2014-09-13 23:32:09'::timestamp AND p.PostTypeId=1 AND p.Score<=16 AND p.AnswerCount<=5 AND p.FavoriteCount<=4 AND u.CreationDate>='2010-07-26 19:11:25'::timestamp;

