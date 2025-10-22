/*+ HashJoin(c u p)
 HashJoin(u p)
 SeqScan(c)
 IndexScan(u)
 SeqScan(p)
 Leading((c (u p))) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.UserId = u.Id AND u.Id = p.OwnerUserId AND c.Score=0 AND c.CreationDate<='2014-09-12 18:33:01'::timestamp AND p.AnswerCount=0 AND p.CommentCount>=0 AND p.CommentCount<=13 AND p.FavoriteCount<=34 AND u.DownVotes=0 AND u.UpVotes<=31 AND u.CreationDate>='2010-08-05 10:03:14'::timestamp;

