/*+ HashJoin(c p u)
 HashJoin(p u)
 SeqScan(c)
 IndexScan(p)
 SeqScan(u)
 Leading((c (p u))) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.UserId = u.Id AND u.Id = p.OwnerUserId AND p.PostTypeId=1 AND p.Score<=75 AND p.AnswerCount>=0 AND p.FavoriteCount<=4 AND p.CreationDate>='2010-09-01 12:21:52'::timestamp AND u.Views>=0 AND u.UpVotes>=0 AND u.CreationDate>='2011-06-22 20:00:28'::timestamp;

