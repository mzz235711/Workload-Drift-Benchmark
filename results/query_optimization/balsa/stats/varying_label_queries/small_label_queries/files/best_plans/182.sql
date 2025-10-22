/*+ NestLoop(u p v c)
 NestLoop(u p v)
 HashJoin(u p)
 IndexScan(u)
 SeqScan(p)
 IndexScan(v)
 IndexScan(c)
 Leading((((u p) v) c)) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE u.Id = c.UserId AND u.Id = p.OwnerUserId AND u.Id = v.UserId AND p.Score>=0 AND p.Score<=58 AND p.AnswerCount>=0 AND p.AnswerCount<=4 AND p.FavoriteCount>=0 AND p.FavoriteCount<=56 AND p.CreationDate>='2010-08-06 14:12:21'::timestamp AND u.Views<=77 AND u.UpVotes=3;

