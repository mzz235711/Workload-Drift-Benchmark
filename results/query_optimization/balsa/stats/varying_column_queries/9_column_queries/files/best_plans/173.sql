/*+ HashJoin(ph p u)
 HashJoin(p u)
 SeqScan(ph)
 SeqScan(p)
 SeqScan(u)
 Leading((ph (p u))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.PostId = p.Id AND p.OwnerUserId = u.Id AND p.PostTypeId=1 AND p.AnswerCount<=5 AND p.CommentCount>=0 AND p.FavoriteCount<=18 AND p.CreationDate>='2010-07-20 11:49:27'::timestamp AND u.Reputation<=217 AND u.UpVotes>=0 AND u.UpVotes<=42 AND u.CreationDate<='2014-08-07 00:46:20'::timestamp;

