/*+ HashJoin(ph p u b)
 HashJoin(ph p u)
 HashJoin(ph p)
 IndexScan(ph)
 IndexScan(p)
 SeqScan(u)
 SeqScan(b)
 Leading((((ph p) u) b)) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u, badges as b WHERE u.Id = p.OwnerUserId AND p.OwnerUserId = ph.UserId AND ph.UserId = b.UserId AND ph.PostHistoryTypeId=2 AND p.AnswerCount<=6 AND p.CommentCount>=0 AND p.CommentCount<=7 AND u.Reputation>=1 AND u.DownVotes>=0 AND u.UpVotes>=0 AND u.UpVotes<=30 AND b.Date<='2014-09-06 20:42:05'::timestamp;

