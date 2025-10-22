/*+ HashJoin(ph p u)
 NestLoop(p u)
 SeqScan(ph)
 SeqScan(p)
 IndexScan(u)
 Leading((ph (p u))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.PostId = p.Id AND p.OwnerUserId = u.Id AND ph.PostHistoryTypeId=5 AND ph.CreationDate>='2010-07-28 17:40:56'::timestamp AND p.AnswerCount<=7 AND p.CommentCount<=10 AND p.FavoriteCount=2 AND u.DownVotes>=0 AND u.DownVotes<=0;

