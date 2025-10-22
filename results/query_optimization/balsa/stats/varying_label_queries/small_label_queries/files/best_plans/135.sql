/*+ NestLoop(u p ph)
 HashJoin(u p)
 IndexScan(u)
 SeqScan(p)
 IndexScan(ph)
 Leading(((u p) ph)) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.PostId = p.Id AND p.OwnerUserId = u.Id AND p.AnswerCount<=7 AND p.CommentCount<=15 AND p.FavoriteCount<=21 AND p.CreationDate>='2010-08-17 23:42:12'::timestamp AND p.CreationDate<='2014-09-09 13:18:50'::timestamp AND u.Views<=23 AND u.UpVotes>=0;

