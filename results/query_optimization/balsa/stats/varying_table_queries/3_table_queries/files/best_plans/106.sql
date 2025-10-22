/*+ MergeJoin(c p u)
 MergeJoin(p u)
 SeqScan(c)
 SeqScan(p)
 IndexScan(u)
 Leading((c (p u))) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.UserId = u.Id AND u.Id = p.OwnerUserId AND c.Score=0 AND p.Score>=-1 AND p.AnswerCount<=4 AND p.FavoriteCount>=0 AND u.CreationDate>='2011-02-10 10:53:40'::timestamp;

